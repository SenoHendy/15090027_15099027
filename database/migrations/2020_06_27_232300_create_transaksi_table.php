<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransaksiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaksi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('pelanggan_id');
            $table->string('sopir_id');
            $table->string('transaksi_tglmulai');
            $table->string('transaksi_tglselesai');
            $table->string('transaksi_hari');
            $table->string('transaksi_tglovertime');
            $table->string('transaksi_hariovertime');
            $table->string('transaksi_total');
            $table->string('transaksi_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transaksi');
    }
}
