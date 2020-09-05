@extends('layouts.app')
@section('container')
<br>
<br>
<br>
      <!-- Blog post -->
      <div class="card mb-4 border shadow">

          <div class="col-md-4">
            <div class="card-body">

              <a href="{{url('/halaman_3')}}" class="btn btn-warning">Pakai Sopir</a>
              <a href="{{url('/halaman_3')}}" class="btn btn-danger">Tidak Pakai Sopir</a>
            </div>
          </div>

        </div>
      </div>
@endsection
