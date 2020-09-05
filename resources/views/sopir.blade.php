@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Sopir :</p>
	<form action="/sopir" method="GET">
		<input type="text" name="cari" placeholder="Cari Sopir .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>

	<br/>
                <a href="/sopir/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Sopir</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                  <tr>
                                      <th scope="col">Alamat Sopir</th>
                                      <th scope="col">Nama Sopir</th>
                                      <th scope="col">Telephon Sopir</th>
                                      <th scope="col">Ktp Sopir</th>
                                      <th scope="col">SIM Sopir</th>
                                      <th scope="col">Status Sopir</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($data_sopir as $sopir)
                                  <tr>
                                    <td>{{ $sopir->sopir_alamat }}</td>
                                    <td>{{ $sopir->sopir_nama }}</td>
                                  	<td>{{ $sopir->sopir_telpon }}</td>
                                    <td>{{ $sopir->sopir_ktp }}</td>
                                    <td>{{ $sopir->sopir_sim }}</td>
                                    <td>{{ $sopir->sopir_status }}</td>
                                  <td>
                                    <a href="/sopir/{{ $sopir->id }}/detail" class="btn btn-primary">Detail</a>
                                    <a href="/sopir/{{ $sopir->id }}/edit" class="btn btn-warning">Edit</a>
                                    <a href="/sopir/{{ $sopir->id }}/delete" class="btn btn-danger"onClick="return confirm('Yakin Mau Di Hapus ?')">Hapus</a>
                                  </td>
                                  </tr>
		                              @endforeach
                                  </tbody>
                            </table>

                            <br/>
	                Halaman : {{ $data_sopir->currentPage() }} <br/>
	            Jumlah Data : {{ $data_sopir->total() }} <br/>
	       Data Per Halaman : {{ $data_sopir->perPage() }} <br/>


	           {{ $data_sopir->links() }}
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

































