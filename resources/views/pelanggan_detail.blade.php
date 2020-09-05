@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Detail Pelanggan
                </div>
                <div class="card-body">
                    <a href="/pelanggan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/pelanggan/{{$pelanggan->id}}" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="card" style="width: 30rem;">
                            <img src="{{ asset('/storage/gambar/'.$pelanggan->pelanggan_foto) }}" class="card-img-top w-50" alt="...">
                            <div class="card-body">
                              <p class="card-text">{{ $pelanggan->pelanggan_nama }}</p>
                              <p class="card-text">{{ $pelanggan->pelanggan_alamat }}</p>
                              <p class="card-text">{{ $pelanggan->pelanggan_telpon }}</p>
                              <a href="{{ asset('/storage/pdf/'.$pelanggan->pelanggan_pdf) }}">{{ $pelanggan->pelanggan_pdf }}</a>
                            </div>
                          </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
