@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Tarif
                </div>
                <div class="card-body">
                    <a href="/tarif" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>

                    <form method="post" action="/tarif/{{$tarif->id}}/update" enctype="multipart/form-data" >

                        {{ csrf_field() }}

                        <input  type="hidden" name="id" class="form-control" value="{{ $tarif->id }}">

                        <div class="form-group">
                            <label for="kendaraan_platnomor">Kategori Produk</label>
                            <select name="kendaraan_platnomor" class="form-control" id="kendaraan_platnomor">
                            <option value="">- Pilih -</option>
                            @foreach($kendaraan as $kd)
                            <option value="{{ $kd->kendaraan_platnomor }}" {{ $tarif->kendaraan_platnomor == $kd->kendaraan_platnomor ? 'selected' : ''}}>
                            {{ $kd->kendaraan_platnomor }}</option>
                            @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Tarif Perhari</label>
                            <input type="text" name="tarif_perhari" value="{{ $tarif->tarif_perhari }}"class="form-control"></input>
                        </div>

                        <div class="form-group">
                            <label>Tarif Overtime</label>
                            <input type="text" name="tarif_overtime" value="{{ $tarif->tarif_overtime }}"class="form-control"></input>
                        </div>

                        <div class="form-group">
                            <label for="tarif_foto">tarif Foto</label>
                            @if($tarif->tarif_foto != NULL)
                            <div>
                                <input type="hidden" name="oldgambar" value="{{ $tarif->tarif_foto }}">
                                <img src="{{ asset('storage/gambar/'.$tarif->tarif_foto) }}" class="w-25">
                            </div>
                            @endif
                            <input type="file" name="tarif_foto" class="form-control-file form-control-sm" id="tarif_foto"/>
                        </div>

                        <div class="form-group">
                            <label for="tarif_pdf">tarif PDF</label>
                            @if($tarif->tarif_pdf != NULL)
                            <div>
                                <input type="hidden" name="oldpdf" value="{{ $tarif->tarif_pdf }}">
                                <a href="{{ asset('/storage/pdf/'.$tarif->tarif_pdf) }}">{{ $tarif->tarif_pdf }}</a>
                            </div>
                            @endif

                            <input type="file" name="tarif_pdf" class="form-control-file form-control-sm"
                              id="tarif_pdf" />
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
@endsection
