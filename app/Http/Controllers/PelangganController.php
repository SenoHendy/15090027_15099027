<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Pelanggan;
use Storage;
use DateTime;


class PelangganController extends Controller
{
       public function pelanggan(Request $request)
       {
        if($request->has('cari')){
            $data_pelanggan = \App\Pelanggan::where('pelanggan_nama','LIKE','%'. $request->cari. '%')->get();
        }else{
            $data_pelanggan = \App\Pelanggan::all();
        }

        $data_pelanggan = \App\Pelanggan::paginate(10);
        return view('/pelanggan',['data_pelanggan' => $data_pelanggan]);

       }

       public function tambah()
       {
           return view('pelanggan_tambah');
       }

       public function create(Request $request)
       {
        //    \App\Pelanggan::create($request->all());
        $this->validate($request, [
            'pelanggan_nama'=>'required',
            'pelanggan_alamat'=>'required',
            'pelanggan_telpon'=>'required',
            'pelanggan_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'pelanggan_pdf'=>'mimes:pdf',
          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
          $namapdf = NULL;

          if($request->pelanggan_foto != null){
              $namagambar = $now->format('Y-m-d__H-i-s').$request->pelanggan_foto->getClientOriginalName();
              $request->pelanggan_foto->storeAs('gambar', $namagambar, 'public');
          }

          if($request->pelanggan_pdf != null){
              $namapdf = $now->format('Y-m-d__H-i-s').$request->pelanggan_pdf->getClientOriginalName();
              $request->pelanggan_pdf->storeAs('pdf', $namapdf, 'public');
          }

          Pelanggan::create([
            'pelanggan_nama'=>$request->pelanggan_nama,
            'pelanggan_alamat'=>$request->pelanggan_alamat,
            'pelanggan_telpon'=>$request->pelanggan_telpon,
            'pelanggan_tahunrakit'=>$request->kendaraan_tahunrakit,
            'pelanggan_foto'=>$namagambar,
            'pelanggan_pdf'=>$namapdf,

        ]);

           return redirect('/pelanggan');
       }
       public function edit($id)
       {
           $pelanggan = \App\Pelanggan::find($id);
           return view('pelanggan_edit', ['pelanggan' => $pelanggan]);

       }

       public function update(Request $request,$id)
       {
        // $pelanggan = \App\Pelanggan::find($id);
        // $pelanggan->update($request->all());
        // return redirect('/pelanggan');


        $this->validate($request, [
            'pelanggan_nama'=>'required',
            'pelanggan_alamat'=>'required',
            'pelanggan_telpon'=>'required',
            'pelanggan_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'pelanggan_pdf'=>'mimes:pdf'
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

          if($request->pelanggan_foto != null){
              Storage::disk('public')->delete('gambar/'.$request->oldgambar);
              $namagambar = $now->format('Y-m-d__H-i-s').$request->pelanggan_foto->getClientOriginalName();
              $request->pelanggan_foto->storeAs('gambar', $namagambar, 'public');
          }

          if($request->pelanggan_pdf != null){
              Storage::disk('public')->delete('pdf/'.$request->oldpdf);
              $namapdf = $now->format('Y-m-d__H-i-s').$request->pelanggan_pdf->getClientOriginalName();
              $request->pelanggan_pdf->storeAs('pdf', $namapdf, 'public');
          }

          $pelanggan = Pelanggan::find($id);
          $pelanggan->update([
            'pelanggan_nama'=>$request->pelanggan_nama,
            'pelanggan_alamat'=>$request->pelanggan_alamat,
            'pelanggan_telpon'=>$request->pelanggan_telpon,
            'pelanggan_foto'=>$namagambar,
            'pelanggan_pdf'=>$namapdf
          ]);

          $pelanggan->save();
          return redirect('/pelanggan');

       }

       public function delete($id)
       {
       $pelanggan = \App\Pelanggan::find($id);
       $pelanggan->delete($pelanggan);
       return redirect('/pelanggan');
       }

       public function detail($id)
       {
           $pelanggan = \App\Pelanggan::find($id);
           return view('pelanggan_detail', ['pelanggan' => $pelanggan]);

       }
}
