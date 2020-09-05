@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Detail Tarif
                </div>
                <div class="card-body">
                    <a href="/tarif" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/tarif/{{$tarif->id}}" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="card" style="width: 30rem;">
                          <img src="{{ asset('/storage/gambar/'.$tarif->tarif_foto) }}" class="card-img-top w-50" alt="...">
                          <div class="card-body">
                            <p class="card-text">{{ $tarif->kendaraan_platnomor }}</p>
                            <p class="card-text">{{ $tarif->tarif_perhari}}</p>
                            <p class="card-text">{{ $tarif->tarif_overtime }}</p>
                            <a href="{{ asset('/storage/pdf/'.$tarif->tarif_pdf) }}">{{ $tarif->tarif_pdf }}</a>
                          </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection

