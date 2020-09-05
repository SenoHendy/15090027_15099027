@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Pelanggan :</p>
	<form action="/pelanggan" method="GET">
		<input type="text" name="cari" placeholder="Cari Pelanggan .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>

	<br/>
                <a href="/pelanggan/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Pelanggan</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                  <tr>
                                      <th scope="col">Pelanggan ID</th>
                                      <th scope="col">Nama Pelanggan</th>
                                      <th scope="col">Alamat Pelanggan</th>
                                      <th scope="col">No Telephone Pelanggan</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($data_pelanggan as $pelanggan)
		                               <tr>
			                               <td>{{ $pelanggan->id }}</td>
			                               <td>{{ $pelanggan->pelanggan_nama }}</td>
			                              <td>{{ $pelanggan->pelanggan_alamat }}</td>
		                              	<td>{{ $pelanggan->pelanggan_telpon }}</td>
			                              <td>
                                            <a href="/pelanggan/{{ $pelanggan->id }}/detail" class="btn btn-primary">Detail</a>
				                            <a href="/pelanggan/{{ $pelanggan->id }}/edit" class="btn btn-warning">Edit</a>
				                           <a href="/pelanggan/{{ $pelanggan->id }}/delete" class="btn btn-danger"onClick="return confirm('Yakin Mau Di Hapus ?')">Hapus</a>
			                              </td>
		                               </tr>
		                                @endforeach

                                  </tbody>
                            </table>

                                                               <br/>
	                Halaman : {{ $data_pelanggan->currentPage() }} <br/>
	            Jumlah Data : {{ $data_pelanggan->total() }} <br/>
	       Data Per Halaman : {{ $data_pelanggan->perPage() }} <br/>


	           {{ $data_pelanggan->links() }}
                        </div>

                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
@endsection

































