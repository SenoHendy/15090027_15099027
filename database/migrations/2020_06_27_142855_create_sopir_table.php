<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSopirTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sopir', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('sopir_alamat');
            $table->string('sopir_nama');
            $table->string('sopir_telpon');
            $table->string('sopir_ktp');
            $table->string('sopir_sim');
            $table->string('sopir_status');
            $table->string('sopir_foto')->nullable();
            $table->string('sopir_pdf')->nullable();
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
        Schema::dropIfExists('sopir');
    }
}
