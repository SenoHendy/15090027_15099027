@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Detail Transaksi
                </div>
                <div class="card-body">
                    <a href="/transaksi" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/transaksi/{{$transaksi->id}}" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="card" style="width: 30rem;">

                            <div class="card-body">
                              <p class="card-text">{{ $transaksi->id }}</p>
                              <p class="card-text">{{ $transaksi->pelanggan_id }}</p>
                              <p class="card-text">{{ $transaksi->sopir_id }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_tglmulai }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_tglselesai }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_hari }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_tglovertime }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_hariovertime }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_total }}</p>
                              <p class="card-text">{{ $transaksi->transaksi_status }}</p>
                            </div>
                          </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
