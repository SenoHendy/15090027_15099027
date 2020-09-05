<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Foto;
use Storage;
use DateTime;

class FotoController extends Controller
{
       public function foto(Request $request)
       {
        if($request->has('cari')){
            $data_foto = \App\Foto::where('kendaraan_merk','LIKE','%'. $request->cari. '%')->get();
        }else{
            $data_kendaraan = \App\Kendaraan::all();
        }

        $data_kendaraan = \App\Kendaraan::paginate(10);
        return view('/kendaraan', ['data_kendaraan' => $data_kendaraan]);

       }

       public function tambah()
       {
           return view('kendaraan_tambah');
       }

       public function create(Request $request)
       {

          // \App\Kendaraan::create($request->all());

          $this->validate($request, [
            'kendaraan_platnomor'=>'required',
            'kendaraan_merk'=>'required',
            'kendaraan_tipe'=>'required',
            'kendaraan_tahunrakit'=>'required',
            'kendaraan_seat'=>'required',
            'kendaraan_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'kendaraan_pdf'=>'mimes:pdf',
            'kendaraan_fasilitas'=>'required',
            'kendaraan_status'=>'required'
          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
          $namapdf = NULL;

          if($request->kendaraan_foto != null){
              $namagambar = $now->format('Y-m-d__H-i-s').$request->kendaraan_foto->getClientOriginalName();
              $request->kendaraan_foto->storeAs('gambar', $namagambar, 'public');
          }

          if($request->kendaraan_pdf != null){
              $namapdf = $now->format('Y-m-d__H-i-s').$request->kendaraan_pdf->getClientOriginalName();
              $request->kendaraan_pdf->storeAs('pdf', $namapdf, 'public');
          }

          Kendaraan::create([
              'kendaraan_platnomor'=>$request->kendaraan_platnomor,
              'kendaraan_merk'=>$request->kendaraan_merk,
              'kendaraan_tipe'=>$request->kendaraan_tipe,
              'kendaraan_tahunrakit'=>$request->kendaraan_tahunrakit,
              'kendaraan_seat'=>$request->kendaraan_seat,
              'kendaraan_foto'=>$namagambar,
              'kendaraan_pdf'=>$namapdf,
              'kendaraan_fasilitas'=>$request->kendaraan_fasilitas,
              'kendaraan_status'=>$request->kendaraan_status
          ]);

          return redirect('/kendaraan');

       }

       public function edit($id)
       {
           $kendaraan = \App\Kendaraan::find($id);
           return view('kendaraan_edit', ['kendaraan' => $kendaraan]);

       }

       public function update(Request $request, Kendaraan $kendaraan, $id)
       {


        // if($request->hasFile('kendaraan_foto')){
        //     $request->file('kendaraan_foto')->move('images/',$request->file('kendaraan_foto')->getClientOriginalName());
        //     $kendaraan->kendaraan_foto = $request->file('kendaraan_foto')->getClientOriginalName();
        //     $kendaraan->save();
        // }

          $this->validate($request, [
            'kendaraan_platnomor'=>'required',
            'kendaraan_merk'=>'required',
            'kendaraan_tipe'=>'required',
            'kendaraan_tahunrakit'=>'required',
            'kendaraan_seat'=>'required',
            'kendaraan_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'kendaraan_pdf'=>'mimes:pdf',
            'kendaraan_fasilitas'=>'required',
            'kendaraan_status'=>'required'
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

          if($request->kendaraan_foto != null){
              Storage::disk('public')->delete('gambar/'.$request->oldgambar);
              $namagambar = $now->format('Y-m-d__H-i-s').$request->kendaraan_foto->getClientOriginalName();
              $request->kendaraan_foto->storeAs('gambar', $namagambar, 'public');
          }

          if($request->kendaraan_pdf != null){
              Storage::disk('public')->delete('pdf/'.$request->oldpdf);
              $namapdf = $now->format('Y-m-d__H-i-s').$request->kendaraan_pdf->getClientOriginalName();
              $request->kendaraan_pdf->storeAs('pdf', $namapdf, 'public');
          }

          $kendaraan = Kendaraan::find($id);
          $kendaraan->update([
            'kendaraan_platnomor'=>$request->kendaraan_platnomor,
            'kendaraan_merk'=>$request->kendaraan_merk,
            'kendaraan_tipe'=>$request->kendaraan_tipe,
            'kendaraan_tahunrakit'=>$request->kendaraan_tahunrakit,
            'kendaraan_seat'=>$request->kendaraan_seat,
            'kendaraan_foto'=>$namagambar,
            'kendaraan_pdf'=>$namapdf,
            'kendaraan_fasilitas'=>$request->kendaraan_fasilitas,
            'kendaraan_status'=>$request->kendaraan_status
          ]);

          $kendaraan->save();

          // Kendaraan::where('id', $kendaraan)
          //   ->update([
          //     'kendaraan_platnomor'=>$request->kendaraan_platnomor,
          //     'kendaraan_merk'=>$request->kendaraan_merk,
          //     'kendaraan_tipe'=>$request->kendaraan_tipe,
          //     'kendaraan_tahunrakit'=>$request->kendaraan_tahunrakit,
          //     'kendaraan_seat'=>$request->kendaraan_seat,
          //     'kendaraan_foto'=>$namagambar,
          //     'kendaraan_pdf'=>$namapdf,
          //     'kendaraan_fasilitas'=>$request->kendaraan_fasilitas,
          //     'kendaraan_status'=>$request->kendaraan_status
          // ]);

          return redirect('/kendaraan');
       }

       public function delete($id)
       {
       $kendaraan = \App\Kendaraan::find($id);
       $kendaraan->delete($kendaraan);
       return redirect('/kendaraan');
       }
       public function detail($id)
       {
           $kendaraan = \App\Kendaraan::find($id);
           return view('kendaraan_detail', ['kendaraan' => $kendaraan]);

       }

}
