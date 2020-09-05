
@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH TARIF
                </div>
                <div class="card-body">
                    <a href="/tarif" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/tarif/create" enctype="multipart/form-data">

                        {{ csrf_field() }}

                        <div class="form-group">
                            <label for="kendaraan_id">Kendaraan Plat Nomor</label>
                            <select name="kendaraan_id" class="form-control" id="kendaraan_id">
                            <option value="" selected>- Pilih -</option>
                            @foreach($kendaraan as $kd)
                            <option value="{{ $kd->kendaraan_id }}">{{ $kd->kendaraan_id }}</option>
                            @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Tarif Perhari</label>
                            <input name="tarif_perhari" class="form-control" placeholder="Masukan Tarif Perhari"></input>

                             @if($errors->has('tarif_perhari'))
                                <div class="text-danger">
                                    {{ $errors->first('tarif_perhari')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Tarif Overtime</label>
                            <input name="tarif_overtime" class="form-control" placeholder="Masukan Tarif Overtime"></input>

                             @if($errors->has('tarif_overtime'))
                                <div class="text-danger">
                                    {{ $errors->first('tarif_overtime')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Foto</label>
                            <input type="file" name="tarif_foto" class="form-control"></input>

                             @if($errors->has('tarif_foto'))
                                <div class="text-danger">
                                    {{ $errors->first('tarif_foto')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>PDF</label>
                            <input type="file" name="tarif_pdf" class="form-control"></input>

                             @if($errors->has('tarif_pdf'))
                                <div class="text-danger">
                                    {{ $errors->first('tarif_pdf')}}
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
