<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Foto extends Model
{
    protected $table = 'foto';
    protected $fillable = ['foto_nama','foto_alamat','foto_telpon','foto_foto'];


}
