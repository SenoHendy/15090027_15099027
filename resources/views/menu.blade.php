@extends('layouts.app')
@section('container')
<div class="container">


    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <br>
          <!-- Blog post -->
          @foreach($data_kendaraan as $kendaraan)
          <div class="card mb-4 border shadow">
            <div class="row no-gutters">
              <div class="col-md-4">
                <div class="inner">
                  <img class="card-img-top" src="{{ asset('images/'.$kendaraan->kendaraan_foto)  }}" alt="Card image cap" style="height:330px;">
                </div>
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title text-warning">{{ $kendaraan->kendaraan_merk }}</h5>
                  <p class="card-text">{{ $kendaraan->kendaraan_platnomor }}</p>
                  <p class="card-text">{{ $kendaraan->kendaraan_tipe }}</p>
                  <p class="card-text">{{ $kendaraan->kendaraan_tahunrakit }}</p>
                  <p class="card-text">{{ $kendaraan->kendaraan_fasilitas }}</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  <a href="/homeawal/{{ $kendaraan->id }}/detail" class="btn btn-warning">Baca Selengkapnya</a>
                </div>
              </div>
            </div>
          </div>

          @endforeach
          <!-- Blog post -->
          {{-- <div class="card mb-4 border shadow-lg">
            <div class="row no-gutters">
              <div class="col-md-4">
                <div class="inner">
                  <img class="card-img-top" src="{{asset('assets/images/sao.jpg')}}" alt="Card image cap" style="height:220px;">
                </div>
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title text-warning">Sword Art Online</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  <a href="#" class="btn btn-warning">Baca Selengkapnya</a>
                </div>
              </div>

            </div>
          </div>

          <!-- Blog post -->
          <div class="card mb-4 border shadow-lg">
            <div class="row no-gutters">
              <div class="col-md-4">
                <div class="inner">
                  <img class="card-img-top" src="{{asset('assets/images/darwin.jpg')}}" alt="Card image cap" style="height:220px;">
                </div>
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title text-warning">Darwins Game</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                  <a href="#" class="btn btn-warning">Baca Selengkapnya</a>
                </div>
              </div>
            </div>
          </div> --}}
          </div>
          <div class="col-md-4 shadow-lg">

          <!-- Search Widget -->
          <div class="card my-4 border border-warning shadow-lg">
            <h5 class="card-header bg-warning text-dark" class="">VIDEO</h5>
            <video controls height="205px;" autoplay>
              <source src="{{asset('assets/images/otaku.mp4')}}" type="video/mp4">
            </video>
          </div>
          <div class="card my-4 border border-warning shadow-lg">
            <h5 class="card-header bg-warning text-dark">IKLAN</h5>
            <a href="https://panel.niagahoster.co.id/ref/327637" target="_blank"><img src="https://niagaspace.sgp1.cdn.digitaloceanspaces.com/assets/images/affiliasi/banner/ads-persona-offline-to-online-business-cloud-hosting-affiliate-300-x-250.png" alt="Cloud Hosting Indonesia" border="0" width="350" height="290" /></a>
          </div>
          <!-- Categories Widget -->
          <div class="card my-4 border border-warning shadow-lg">
            <h5 class="card-header bg-warning text-dark">LABEL</h5>
            <div class="inner">
              <div class="card-body">
                <a href=""><h5 class="card-title text-warning">HOME</h5></a>
                <a href=""><h5 class="card-title text-warning">MENU</h5></a>
                    <a href=""><h5 class="card-title text-warning">ABOUT</h5></a>
                        <a href=""><h5 class="card-title text-warning">PROFILE</h5></a>
              </div>
            </div>

          </div>
          <div class="card my-4 border border-warning shadow-lg">
            <h5 class="card-header bg-warning text-dark">IKLAN</h5>
            <a href="http://yufid.com" title="Yufid.com Islamic Search Engine" target="_blank"><img src="http://www.yufid.com/images/banner-yufidcom300.png" alt="yufid.com" width="350" height="290" /></a>
          </div>

        </div>
        </div>
        <br/>
        Halaman : {{ $data_kendaraan->currentPage() }} <br/>
    Jumlah Data : {{ $data_kendaraan->total() }} <br/>
    Data Per Halaman : {{ $data_kendaraan->perPage() }} <br/>
    {{ $data_kendaraan->links() }}
    <!-- Blog Entries Column -->

    <div>
@endsection
