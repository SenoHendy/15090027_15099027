<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Tarif;
use App\Kendaraan;
use Storage;
use DateTime;

class TarifController extends Controller
{
       public function tarif(Request $request)
       {
        if($request->has('cari')){
            $data_tarif = \App\Tarif::where('tarif_perhari','LIKE','%' . $request->cari .'%')->get();
        }else{
            $data_tarif = \App\Tarif::all();
        }

        $data_tarif = \App\Tarif::paginate(10);
        return view('tarif',['data_tarif' => $data_tarif]);

       }

       public function tambah(Kendaraan $kendaraan)
       {
          $kendaraan = Kendaraan::all();
          return view('tarif_tambah', compact('kendaraan'));
       }

       public function create(Request $request)
       {
          // \App\Tarif::create($request->all());

          $this->validate($request, [
            'tarif_perhari'=>'required',
            'tarif_overtime'=>'required',
            'tarif_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'tarif_pdf'=>'mimes:pdf'
          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
          $namapdf = NULL;

          if($request->tarif_foto != null){
              $namagambar = $now->format('Y-m-d__H-i-s').$request->tarif_foto->getClientOriginalName();
              $request->tarif_foto->storeAs('gambar', $namagambar, 'public');
          }

          if($request->tarif_pdf != null){
              $namapdf = $now->format('Y-m-d__H-i-s').$request->tarif_pdf->getClientOriginalName();
              $request->tarif_pdf->storeAs('pdf', $namapdf, 'public');
          }

          Tarif::create([
              'kendaraan_platnomor'=>$request->kendaraan_platnomor,
              'tarif_perhari'=>$request->tarif_perhari,
              'tarif_overtime'=>$request->tarif_overtime,
              'tarif_foto'=>$namagambar,
              'tarif_pdf'=>$namapdf
          ]);

          return redirect('/tarif');
       }

       public function edit(Kendaraan $kendaraan, $id)
       {

           $tarif = Tarif::find($id);

           $kendaraan = Kendaraan::all();
           return view('tarif_edit', compact('tarif', 'kendaraan'));

       }

       public function update(Request $request, Tarif $tarif, $id)
       {
          // $tarif = \App\Tarif::find($id);
          // $tarif->update($request->all());

          $this->validate($request, [
            'tarif_perhari'=>'required',
            'tarif_overtime'=>'required',
            'tarif_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'tarif_pdf'=>'mimes:pdf'
          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
          $namapdf = NULL;

          if($request->oldgambar!=NULL){
              $namagambar=$request->oldgambar;
          }

          if($request->oldpdf!=NULL){
              $namapdf=$request->oldpdf;
          }

          if($request->tarif_foto != null){
              Storage::disk('public')->delete('gambar/'.$request->oldgambar);
              $namagambar = $now->format('Y-m-d__H-i-s').$request->tarif_foto->getClientOriginalName();
              $request->tarif_foto->storeAs('gambar', $namagambar, 'public');
          }

          if($request->tarif_pdf != null){
              Storage::disk('public')->delete('pdf/'.$request->oldpdf);
              $namapdf = $now->format('Y-m-d__H-i-s').$request->tarif_pdf->getClientOriginalName();
              $request->tarif_pdf->storeAs('pdf', $namapdf, 'public');
          }

          $tarif = Tarif::find($id);
          $tarif->update([
            'kendaraan_platnomor'=>$request->kendaraan_platnomor,
            'tarif_perhari'=>$request->tarif_perhari,
            'tarif_overtime'=>$request->tarif_overtime,
            'tarif_foto'=>$namagambar,
            'tarif_pdf'=>$namapdf
          ]);

          $tarif->save();

          return redirect('/tarif');
       }

       public function delete($id)
       {
       $tarif = \App\Tarif::find($id);
       $tarif->delete($tarif);
       return redirect('/tarif');
       }

       public function detail($id)
       {
           $tarif = \App\Tarif::find($id);
           return view('tarif_detail', ['tarif' => $tarif]);

       }


}
