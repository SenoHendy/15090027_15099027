<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kendaraan extends Model
{
    protected $table = 'kendaraan';
    protected $fillable = ['kendaraan_platnomor','kendaraan_merk','kendaraan_tipe','kendaraan_tahunrakit','kendaraan_seat','kendaraan_foto','kendaraan_pdf','kendaraan_fasilitas','kendaraan_status'];


}
