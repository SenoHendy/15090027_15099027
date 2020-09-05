<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Sopir;
use Storage;
use DateTime;

class SopirController extends Controller
{
       public function sopir(Request $request)
       {
        if($request->has('cari')){
            $data_sopir = \App\Sopir::where('sopir_alamat','LIKE','%'. $request->cari. '%')->get();
        }else{
            $data_sopir = \App\Sopir::all();
        }

        $data_sopir = \App\Sopir::paginate(10);
        return view('sopir',['data_sopir' => $data_sopir]);

       }

       public function tambah()
       {
           return view('sopir_tambah');
       }

       public function create(Request $request)
       {
          
          // \App\Sopir::create($request->all());
           
          $this->validate($request, [
            'sopir_alamat'=>'required',
            'sopir_nama'=>'required',
            'sopir_telpon'=>'required',
            'sopir_ktp'=>'required',
            'sopir_sim'=>'required',
            'sopir_foto'=>'image|mimes:jpeg,png,jpg,gif',
            'sopir_pdf'=>'mimes:pdf',
            'sopir_status'=>'required'
          ]);

          $now = new DateTime("NOW");
          $namagambar = NULL;
          $namapdf = NULL;
          
          if($request->sopir_foto != null){
              $namagambar = $now->format('Y-m-d__H-i-s').$request->sopir_foto->getClientOriginalName();
              $request->sopir_foto->storeAs('gambar', $namagambar, 'public');
          }
          
          if($request->sopir_pdf != null){
              $namapdf = $now->format('Y-m-d__H-i-s').$request->sopir_pdf->getClientOriginalName();
              $request->sopir_pdf->storeAs('pdf', $namapdf, 'public');
          }
          
          Sopir::create([
              'sopir_alamat'=>$request->sopir_alamat,
              'sopir_nama'=>$request->sopir_nama,
              'sopir_telpon'=>$request->sopir_telpon,
              'sopir_ktp'=>$request->sopir_ktp,
              'sopir_sim'=>$request->sopir_sim,
              'sopir_foto'=>$namagambar,
              'sopir_pdf'=>$namapdf,
              'sopir_status'=>$request->sopir_status
          ]);

          return redirect('/sopir');
       }

       public function edit($id)
       {
           $sopir = \App\Sopir::find($id);
           return view('sopir_edit', ['sopir' => $sopir]);

       }

       public function update(Request $request, Sopir $sopir, $id)
       {
        // $sopir = \App\Sopir::find($id);
        // $sopir->update($request->all());
        // if($request->hasFile('sopir_foto')){
        //     $request->file('sopir_foto')->move('images/',$request->file('sopir_foto')->getClientOriginalName());
        //     $sopir->sopir_foto = $request->file('sopir_foto')->getClientOriginalName();
        //     $sopir->save();
        // }

        $this->validate($request, [
          'sopir_alamat'=>'required',
          'sopir_nama'=>'required',
          'sopir_telpon'=>'required',
          'sopir_ktp'=>'required',
          'sopir_sim'=>'required',
          'sopir_foto'=>'image|mimes:jpeg,png,jpg,gif',
          'sopir_pdf'=>'mimes:pdf',
          'sopir_status'=>'required'
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

        if($request->sopir_foto != null){
            Storage::disk('public')->delete('gambar/'.$request->oldgambar);
            $namagambar = $now->format('Y-m-d__H-i-s').$request->sopir_foto->getClientOriginalName();
            $request->sopir_foto->storeAs('gambar', $namagambar, 'public');
        }

        if($request->sopir_pdf != null){
            Storage::disk('public')->delete('pdf/'.$request->oldpdf);
            $namapdf = $now->format('Y-m-d__H-i-s').$request->sopir_pdf->getClientOriginalName();
            $request->sopir_pdf->storeAs('pdf', $namapdf, 'public');
        }        

        $sopir = Sopir::find($id);
        $sopir->update([
          'sopir_alamat'=>$request->sopir_alamat,
          'sopir_nama'=>$request->sopir_nama,
          'sopir_telpon'=>$request->sopir_telpon,
          'sopir_ktp'=>$request->sopir_ktp,
          'sopir_sim'=>$request->sopir_sim,
          'sopir_foto'=>$namagambar,
          'sopir_pdf'=>$namapdf,
          'sopir_status'=>$request->sopir_status
        ]);

        $sopir->save();

        return redirect('/sopir');
       }

       public function delete($id)
       {
       $sopir = \App\Sopir::find($id);
       $sopir->delete($sopir);
       return redirect('/sopir');
       }

       public function detail($id)
       {
           $sopir = \App\Sopir::find($id);
           return view('sopir_detail', ['sopir' => $sopir]);

       }
}
