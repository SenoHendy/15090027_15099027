@extends('layouts.app')
@section('container')
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{asset('assets/images/mob1.jpg')}}" class=" d-block w-100" height="500px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('assets/images/mob2.jpg')}}" class="d-block w-100" height="500px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('assets/images/mob3.png')}}" class="d-block w-100" height="500px" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<h1 class=" text-primary"><marquee>WELCOME TO RENTAL MOBIL DI KALIGANGSA BREBES</marquee></h1>
<div class="container">

  <div class="row">

    <!-- Blog Entries Column -->
    <div class="col-md-8">

      <br>
      <!-- Blog post -->
      @foreach($data_kendaraan as $kendaraan)
      <form>
      <div class="card mb-4 border shadow">
        <div class="row no-gutters">
          <div class="col-md-4">
            <div class="inner">
              <img class="card-img-top" src="{{ asset('images/'.$kendaraan->kendaraan_foto)  }}" alt="Card image cap" style="height:330px;">
            </div>
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title text-prmary">{{ $kendaraan->kendaraan_merk }}</h5>
              <p class="card-text">{{ $kendaraan->kendaraan_platnomor }}</p>
              <p class="card-text">{{ $kendaraan->kendaraan_tipe }}</p>
              <p class="card-text">{{ $kendaraan->kendaraan_tahunrakit }}</p>
              <p class="card-text">{{ $kendaraan->kendaraan_fasilitas }}</p>
              <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              <a href="/homeawal/{{ $kendaraan->id }}/detail" class="btn btn-primary">Baca Selengkapnya</a>
            </div>
          </div>
        </div>
      </div></form>
      @endforeach

      </div>
      <div class="col-md-4 shadow-lg">

      <!-- Search Widget -->
      <div class="card my-4 border border-primary shadow-lg">
        <h5 class="card-header bg-primary text-dark" class="">VIDEO</h5>
        <video controls height="205px;" autoplay>
          <source src="{{asset('assets/images/otaku.mp4')}}" type="video/mp4">
        </video>
      </div>
      <div class="card my-4 border border-primary shadow-lg">
        <h5 class="card-header bg-primary text-dark">IKLAN</h5>
        <a href="https://panel.niagahoster.co.id/ref/327637" target="_blank"><img src="https://niagaspace.sgp1.cdn.digitaloceanspaces.com/assets/images/affiliasi/banner/ads-persona-offline-to-online-business-cloud-hosting-affiliate-300-x-250.png" alt="Cloud Hosting Indonesia" border="0" width="350" height="290" /></a>
      </div>
      <!-- Categories Widget -->
      <div class="card my-4 border border-primary shadow-lg">
        <h5 class="card-header bg-primary text-dark">LABEL</h5>
        <div class="inner">
          <div class="card-body">
            <a href="{{url('/')}}"><h5 class="card-title text-primary">HOME</h5></a>
            <a href="{{url('/menu')}}"><h5 class="card-title text-primary">MENU</h5></a>
                <a href="{{url('/about')}}"><h5 class="card-title text-primary">ABOUT</h5></a>
                    <a href="{{url('/profile')}}"><h5 class="card-title text-primary">PROFILE</h5></a>
          </div>
        </div>

      </div>
      <div class="card my-4 border border-primary shadow-lg">
        <h5 class="card-header bg-primary text-dark">IKLAN</h5>
        <a href="http://yufid.com" title="Yufid.com Islamic Search Engine" target="_blank"><img src="http://www.yufid.com/images/banner-yufidcom300.png" alt="yufid.com" width="350" height="290" /></a>
      </div>

    </div>
    </div>

    <br/>
  
{{ $data_kendaraan->links() }}
    <div>

@endsection




