<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HalamanSopirController extends Controller
{

       public function halamansopir()
        {

            $data_sopir = \App\Sopir::paginate(1);
            return view('halamansopir',['data_sopir' => $data_sopir]);

           }

           public function detail($id)
       {
           $sopir = \App\Sopir::find($id);
           return view('halamansopir_1', ['sopir' => $sopir]);

       }






}
