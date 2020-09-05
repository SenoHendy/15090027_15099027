@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Sopir
                </div>
                <div class="card-body">
                    <a href="/kendaraan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/kendaraan/{{$kendaraan->id}}" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="card" style="width: 30rem;">
                            <img src="{{ asset('/storage/gambar/'.$kendaraan->kendaraan_foto) }}" class="card-img-top w-50" alt="...">
                            <div class="card-body">
                              <p class="card-text">{{ $kendaraan->kendaraan_platnomor }}</p>
                              <p class="card-text">{{ $kendaraan->kendaraan_merk }}</p>
                              <p class="card-text">{{ $kendaraan->kendaraan_tipe }}</p>
                              <p class="card-text">{{ $kendaraan->kendaraan_tahunrakit }}</p>
                              <p class="card-text">{{ $kendaraan->kendaraan_seat }}</p>
                              <p class="card-text">{{ $kendaraan->kendaraan_fasilitas }}</p>
                              <p class="card-text">{{ $kendaraan->kendaraan_status }}</p>
                              <a href="{{ asset('/storage/pdf/'.$kendaraan->kendaraan_pdf) }}">{{ $kendaraan->kendaraan_pdf }}</a>
                            </div>
                          </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
