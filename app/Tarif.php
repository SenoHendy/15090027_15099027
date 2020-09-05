<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tarif extends Model
{
    protected $table = 'tarif';
    protected $fillable = ['kendaraan_id','tarif_perhari','tarif_overtime','tarif_foto','tarif_pdf'];


}
