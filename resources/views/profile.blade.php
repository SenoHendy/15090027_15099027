@extends('layouts.app')
@section('profile')
<br>
<br>

<div class="card mb-3"style="width: 1200px">
    <img src="{{asset('assets/images/assasin.jpg')}}" style="height: 300px"class="card-img-top" alt="...">
    <div class="card-body">
      <h1 class="card-title">Profile Perusahaan</h1>
      <p class="card-text">Nama Perusahaan : RentalMobil.com
                           Di dirikan      : 10 Agustus 2020
                           email           : rentalmobil@gmail.com
                           facebook        : Rental Mobil 2020
                           Twitter         : Rental Mobil20
                           Instagram       : Rental Mobil20
      </p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
@endsection
