<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;


class TransaksiController extends Controller
{
       public function transaksi(Request $request)
       {
        if($request->has('cari')){
            $data_transaksi = \App\Transaksi::where('transaksi_tglmulai','LIKE','%'. $request->cari. '%')->get();
        }else{
            $data_transaksi = \App\Transaksi::all();
        }

        $data_transaksi = \App\Transaksi::paginate(10);
        return view('transaksi',['data_transaksi' => $data_transaksi]);

       }

       public function tambah()
       {
           return view('transaksi_tambah');
       }

       public function create(Request $request)
       {
           \App\Transaksi::create($request->all());
           return redirect('/transaksi');
       }
       public function edit($id)
       {
           $transaksi = \App\Transaksi::find($id);
           return view('transaksi_edit', ['transaksi' => $transaksi]);

       }

       public function update(Request $request,$id)
       {
        $transaksi = \App\Transaksi::find($id);
        $transaksi->update($request->all());
        return redirect('/transaksi');
       }

       public function delete($id)
       {
       $transaksi = \App\Transaksi::find($id);
       $transaksi->delete($transaksi);
       return redirect('/transaksi');
       }

       public function detail($id)
       {
           $transaksi = \App\Transaksi::find($id);
           return view('transaksi_detail', ['transaksi' => $transaksi]);

       }

}
