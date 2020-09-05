@extends('layouts.app')
@section('container')


<div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <br>
        <!-- Blog post -->
        <form>
        <div class="card mb-4 border shadow">
          <div class="row no-gutters">

                {{ csrf_field() }}


            <div class="col-md-8">
              <div class="card-body">

                <h5 class="card-title text-prmary">{{ $kendaraan->kendaraan_merk }}</h5>
                <p class="card-text">{{ $kendaraan->kendaraan_platnomor }}</p>
                <p class="card-text">{{ $kendaraan->kendaraan_merk }}</p>
                <p class="card-text">{{ $kendaraan->kendaraan_tipe }}</p>
                <p class="card-text">{{ $kendaraan->kendaraan_tahunrakit }}</p>
                <p class="card-text">{{ $kendaraan->kendaraan_seat }}</p>
                <p class="card-text">{{ $kendaraan->kendaraan_fasilitas }}</p>
                <p class="card-text">{{ $kendaraan->kendaraan_status }}</p>
                <a href="/" class="btn btn-prmary">Kembali</a>
                <a href="/halamansopir" class="btn btn-prmary">Rental</a>
              </div>
            </div>
          </div>
        </div></form>

        </div>
        <div class="col-md-4 shadow-lg">

        <!-- Search Widget -->

        <div class="card my-4 border border-prmary shadow-lg">
          <img class="card-img-top" src="{{ asset('images/'.$kendaraan->kendaraan_foto)  }}"width="350" height="400" /></image>
        </div>
        <!-- Categories Widget -->

      </div>
      </div>

      <br/>

      <div>

@endsection
