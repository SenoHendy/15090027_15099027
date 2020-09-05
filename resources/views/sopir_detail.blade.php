@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Detail Sopir
                </div>
                <div class="card-body">
                    <a href="/sopir" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/sopir/{{$sopir->id}}" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="card" style="width: 30rem;">
                            <img src="{{ asset('/storage/gambar/'.$sopir->sopir_foto) }}" class="card-img-top w-50" alt="...">
                            <div class="card-body">
                              <p class="card-text">{{ $sopir->sopir_alamat }}</p>
                              <p class="card-text">{{ $sopir->sopir_nama }}</p>
                              <p class="card-text">{{ $sopir->sopir_telpon }}</p>
                              <p class="card-text">{{ $sopir->sopir_ktp }}</p>
                              <p class="card-text">{{ $sopir->sopir_sim }}</p>
                              <p class="card-text">{{ $sopir->sopir_status }}</p>
                              <a href="{{ asset('/storage/pdf/'.$sopir->sopir_pdf) }}">{{ $sopir->sopir_pdf }}</a>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
