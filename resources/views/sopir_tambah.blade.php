@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH SOPIR
                </div>
                <div class="card-body">
                    <a href="/sopir" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/sopir/create" enctype="multipart/form-data">

                        {{ csrf_field() }}


                        <div class="form-group">
                            <label>Alamat Sopir</label>
                            <input name="sopir_alamat" class="form-control" placeholder="Masukan Alamat Sopir"></input>

                             @if($errors->has('sopir_alamat'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_alamat')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Nama Sopir</label>
                            <input name="sopir_nama" class="form-control" placeholder="Masukan Nama Sopir"></input>

                             @if($errors->has('sopir_nama'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_nama')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>No Telpon Sopir</label>
                            <input name="sopir_telpon" class="form-control" placeholder="Masukan No Telpon Sopir"></input>

                             @if($errors->has('sopir_telpon'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_telpon')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>No KTP Sopir</label>
                            <input name="sopir_ktp" class="form-control" placeholder="Masukan No KTP Sopir"></input>

                             @if($errors->has('sopir_ktp'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_ktp')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>No SIM Sopir</label>
                            <input name="sopir_sim" class="form-control" placeholder="Masukan No SIM Sopir"></input>

                             @if($errors->has('sopir_sim'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_sim')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Status Sopir</label>
                            <input name="sopir_status" class="form-control" placeholder="Masukan Status Sopir"></input>

                             @if($errors->has('sopir_status'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_status')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Foto</label>
                            <input type="file" name="sopir_foto" class="form-control"></input>

                             @if($errors->has('sopir_foto'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_foto')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>PDF</label>
                            <input type="file" name="sopir_pdf" class="form-control"></input>

                             @if($errors->has('sopir_pdf'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_pdf')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
