<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKendaraanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kendaraan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('kendaraan_platnomor');
            $table->string('kendaraan_merk');
            $table->string('kendaraan_tipe');
            $table->string('kendaraan_tahunrakit');
            $table->string('kendaraan_seat');
            $table->string('kendaraan_foto')->nullable();
            $table->string('kendaraan_pdf')->nullable();
            $table->string('kendaraan_fasilitas');
            $table->string('kendaraan_status');
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
        Schema::dropIfExists('kendaraan');
    }
}
