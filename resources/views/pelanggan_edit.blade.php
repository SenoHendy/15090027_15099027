@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Pelanggan
                </div>
                <div class="card-body">
                    <a href="/pelanggan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/pelanggan/{{$pelanggan->id}}/update" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>Pelanggan ID</label>
                            <input  type="text" name="id" class="form-control" value="{{ $pelanggan->id }}">
                        </div>
                        <div class="form-group">
                            <label>Nama Pelanggan</label>
                            <input  type="text" name="pelanggan_nama" class="form-control" value="{{ $pelanggan->pelanggan_nama }}">
                        </div>


                        <div class="form-group">
                            <label>No Telepon Pelanggan</label>
                            <input type="text" name="pelanggan_telpon" value="{{ $pelanggan->pelanggan_telpon }}"class="form-control" placeholder="Masukan Alamat Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label for="kendaraan_foto">Pelanggan Foto</label>
                            @if($pelanggan->pelanggan_foto != NULL)
                            <div>
                                <input type="hidden" name="oldgambar" value="{{ $pelanggan->pelanggan_foto }}">
                                <img src="{{ asset('storage/gambar/'.$pelanggan->pelanggan_foto) }}" class="w-25">
                            </div>
                            @endif
                            <input type="file" name="pelanggan_foto" class="form-control-file form-control-sm" id="pelanggan_foto"/>
                        </div>

                        <div class="form-group">
                            <label for="pelanggan_pdf">Kendaraan PDF</label>
                            @if($pelanggan->pelanggan_pdf != NULL)
                            <div>
                                <input type="hidden" name="oldpdf" value="{{ $pelanggan->pelanggan_pdf }}">
                                <a href="{{ asset('/storage/pdf/'.$pelanggan->pelanggan_pdf) }}">{{ $pelanggan->pelanggan_pdf }}</a>
                            </div>
                            @endif

                            <input type="file" name="pelanggan_pdf" class="form-control-file form-control-sm"
                              id="pelanggan_pdf" />
                        </div>


                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
