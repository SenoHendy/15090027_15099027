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




            <div class="col-md-8">
              <div class="card-body">
                @foreach($data_sopir as $sopir)
                <h5 class="card-title text-warning">{{ $sopir->sopir_nama }}</h5>
                <p class="card-text">{{ $sopir->id }}</p>
                <p class="card-text">{{ $sopir->sopir_alamat }}</p>
                <p class="card-text">{{ $sopir->sopir_telpon }}</p>
                <p class="card-text">{{ $sopir->sopir_ktp }}</p>
                <p class="card-text">{{ $sopir->sopir_sim }}</p>
                <p class="card-text">{{ $sopir->sopir_status }}</p>
                <p class="card-text"></p>
                <a href="#" class="btn btn-warning">Tidak</a>
                <a href="#" class="btn btn-warning">Pakai Sopir</a>
                @endforeach
              </div>
            </div>
          </div>

        </div></form>

        </div>
        <div class="col-md-4 shadow-lg">

        <!-- Search Widget -->

        <div class="card my-4 border border-warning shadow-lg">
          <img src="{{ asset('images/'.$sopir->sopir_foto)  }}" width="350" height="400" /></image>
        </div>
        <!-- Categories Widget -->

      </div>
      </div>

      <br/>
      {{ $data_sopir->links() }}
      <div>

@endsection
