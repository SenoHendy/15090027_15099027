@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Sopir
                </div>
                <div class="card-body">
                    <a href="/sopir" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/sopir/{{$sopir->id}}/update" enctype="multipart/form-data" >

                        {{ csrf_field() }}
                        
                        <input  type="hidden" name="id" class="form-control" value="{{ $sopir->id }}">
                        
                        <div class="form-group">
                            <label>Alamat Sopir</label>
                            <input  type="text" name="sopir_alamat" class="form-control" value="{{ $sopir->sopir_alamat }}">
                        </div>


                        <div class="form-group">
                            <label>Nama Sopir</label>
                            <input type="text" name="sopir_nama" value="{{ $sopir->sopir_nama }}"class="form-control" placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>No Telepon Sopir</label>
                            <input type="text" name="sopir_telpon" value="{{ $sopir->sopir_telpon }}"class="form-control" placeholder="Masukan No Telepon Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>No KTP Sopir</label>
                            <input type="text" name="sopir_ktp" value="{{ $sopir->sopir_ktp }}"class="form-control" placeholder="Masukan No KTP Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>No SIM Sopir</label>
                            <input type="text" name="sopir_sim" value="{{ $sopir->sopir_sim }}"class="form-control" placeholder="Masukan No SIM Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Status Sopir</label>
                            <input type="text" name="sopir_status" value="{{ $sopir->sopir_status }}"class="form-control" placeholder="Masukan Status Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label for="sopir_foto">Sopir Foto</label>
                            @if($sopir->sopir_foto != NULL)
                            <div>
                                <input type="hidden" name="oldgambar" value="{{ $sopir->sopir_foto }}">
                                <img src="{{ asset('storage/gambar/'.$sopir->sopir_foto) }}" class="w-25">
                            </div>
                            @endif
                            <input type="file" name="sopir_foto" class="form-control-file form-control-sm" id="sopir_foto"/>
                        </div>

                        <div class="form-group">
                            <label for="sopir_pdf">Sopir PDF</label>
                            @if($sopir->sopir_pdf != NULL)
                            <div>
                                <input type="hidden" name="oldpdf" value="{{ $sopir->sopir_pdf }}">
                                <a href="{{ asset('/storage/pdf/'.$sopir->sopir_pdf) }}">{{ $sopir->sopir_pdf }}</a>
                            </div>
                            @endif

                            <input type="file" name="sopir_pdf" class="form-control-file form-control-sm"
                              id="sopir_pdf" />
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
