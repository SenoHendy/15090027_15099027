<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeAwalController extends Controller
{

       public function homeawal()
        {

            $data_kendaraan = \App\Kendaraan::paginate(4);
            return view('homeawal',['data_kendaraan' => $data_kendaraan]);

           }

           public function detail($id)
       {
           $kendaraan = \App\Kendaraan::find($id);
           return view('halaman_1', ['kendaraan' => $kendaraan]);

       }

       public function menu()
       {
        $data_kendaraan = \App\Kendaraan::paginate(4);
        return view('menu',['data_kendaraan' => $data_kendaraan]);
       }

       public function about()
       {
           return view('about');
       }

       public function profile()
       {
           return view('profile');
       }





}
