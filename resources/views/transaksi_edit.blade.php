@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Transaksi
                </div>
                <div class="card-body">
                    <a href="/transaksi" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/transaksi/{{$transaksi->id}}/update" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>Transaksi ID</label>
                            <input  type="text" name="id" class="form-control" value="{{ $transaksi->id }}">
                        </div>
                        <div class="form-group">
                            <label>Pelanggan ID</label>
                            <input  type="text" name="pelanggan_id" class="form-control" value="{{ $transaksi->pelanggan_id }}">
                        </div>


                        <div class="form-group">
                            <label>Sopir ID</label>
                            <input type="text" name="sopir_id" value="{{ $transaksi->sopir_id }}"class="form-control" placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Mulai</label>
                            <input type="text" name="transaksi_tglmulai" value="{{ $transaksi->transaksi_tglmulai }}"class="form-control" placeholder="Masukan Transaksi Tanggal Mulai"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Selesai</label>
                            <input type="text" name="transaksi_tglselesai" value="{{ $transaksi->transaksi_tglselesai }}"class="form-control" placeholder="Masukan Transaksi Tanggal Selesai"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Hari</label>
                            <input type="text" name="transaksi_hari" value="{{ $transaksi->transaksi_hari }}"class="form-control" placeholder="Masukan Transaksi Hari"></input>
                        </div>
                        <div class="form-group">
                            <label>Transaksi Tanggal Overtime</label>
                            <input type="text" name="transaksi_tglovertime" value="{{ $transaksi->transaksi_tglovertime }}"class="form-control" placeholder="Masukan Transaksi Tanggal Overtime"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Hari Overtime</label>
                            <input type="text" name="transaksi_hariovertime" value="{{ $transaksi->transaksi_hariovertime }}"class="form-control" placeholder="Masukan Transaksi Hari Overtime"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Total</label>
                            <input type="text" name="transaksi_total" value="{{ $transaksi->transaksi_total }}"class="form-control" placeholder="Masukan Total"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Status</label>
                            <input type="text" name="transaksi_status" value="{{ $transaksi->transaksi_status }}"class="form-control" placeholder="Masukan Transaksi Status"></input>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
