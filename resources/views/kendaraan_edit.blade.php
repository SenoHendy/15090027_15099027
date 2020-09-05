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

                    <form method="post" action="/kendaraan/{{$kendaraan->id}}/update" enctype="multipart/form-data" >
                        
                        {{ csrf_field() }}

                        <input type="hidden" name="id" value="{{ $kendaraan->id }}">

                        <div class="form-group">
                            <label>Kendaraan Platnomor</label>
                            <input  type="text" name="kendaraan_platnomor" class="form-control" value="{{ $kendaraan->kendaraan_platnomor }}">
                        </div>


                        <div class="form-group">
                            <label>Kendaraan Merk</label>
                            <input type="text" name="kendaraan_merk" value="{{ $kendaraan->kendaraan_merk }}"class="form-control" placeholder="Masukan Alamat Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Tipe</label>
                            <input name="kendaraan_tipe" class="form-control" value="{{ $kendaraan->kendaraan_tipe }}"placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Tahun Rakit</label>
                            <input name="kendaraan_tahunrakit" class="form-control" value="{{ $kendaraan->kendaraan_tahunrakit }}" placeholder="Masukan No Telephone Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Seat</label>
                            <input name="kendaraan_seat" class="form-control" value="{{ $kendaraan->kendaraan_seat }}"placeholder="Masukan No KTP Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label for="kendaraan_foto">Kendaraan Foto</label>
                            @if($kendaraan->kendaraan_foto != NULL)
                            <div>
                                <input type="hidden" name="oldgambar" value="{{ $kendaraan->kendaraan_foto }}">
                                <img src="{{ asset('storage/gambar/'.$kendaraan->kendaraan_foto) }}" class="w-25">
                            </div>
                            @endif
                            <input type="file" name="kendaraan_foto" class="form-control-file form-control-sm" id="kendaraan_foto"/>
                        </div>

                        <div class="form-group">
                            <label for="kendaraan_pdf">Kendaraan PDF</label>
                            @if($kendaraan->kendaraan_pdf != NULL)
                            <div>
                                <input type="hidden" name="oldpdf" value="{{ $kendaraan->kendaraan_pdf }}">
                                <a href="{{ asset('/storage/pdf/'.$kendaraan->kendaraan_pdf) }}">{{ $kendaraan->kendaraan_pdf }}</a>
                            </div>
                            @endif

                            <input type="file" name="kendaraan_pdf" class="form-control-file form-control-sm"
                              id="kendaraan_pdf" />
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Fasilitas</label>
                            <input name="kendaraan_fasilitas" class="form-control"value="{{ $kendaraan->kendaraan_fasilitas }}" placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Status</label>
                            <input name="kendaraan_status" class="form-control"value="{{ $kendaraan->kendaraan_status }}" placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
