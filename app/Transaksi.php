<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    protected $table = 'transaksi';
    protected $fillable = ['id','pelanggan_id','sopir_id','transaksi_tglmulai','transaksi_tglselesai','transaksi_hari','transaksi_hari','transaksi_tglovertime','transaksi_hariovertime','transaksi_total','transaksi_status'];


}
