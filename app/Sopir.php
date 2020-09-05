<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sopir extends Model
{
    protected $table = 'sopir';
    protected $fillable = ['sopir_alamat','sopir_nama','sopir_telpon','sopir_ktp','sopir_sim','sopir_status','sopir_foto','sopir_pdf'];


}
