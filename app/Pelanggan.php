<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggan extends Model
{
    protected $table = 'pelanggan';
    protected $fillable = ['pelanggan_nama','pelanggan_alamat','pelanggan_telpon','pelanggan_foto','pelanggan_pdf'];


}
