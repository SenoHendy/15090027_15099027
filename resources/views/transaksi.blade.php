@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Transaksi :</p>
	<form action="/transaksi" method="GET">
		<input type="text" name="cari" placeholder="Cari Transaksi .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>

	<br/>
                <a href="/transaksi/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Transaksi</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                  <tr>
                                      <th scope="col">Transaksi ID</th>
                                      <th scope="col">Pelanggan ID</th>
                                      <th scope="col">Sopir ID</th>
                                      <th scope="col">Transaksi Tanggal Mulai</th>
                                      <th scope="col">Transaksi Tanggal Selesai</th>
                                      <th scope="col">Transaksi Hari</th>
                                      <th scope="col">Transaksi Tanggal Overtime</th>
                                      <th scope="col">Transaksi Hari Overtime</th>
                                      <th scope="col">Transaksi Total</th>
                                      <th scope="col">Transaksi Status</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($data_transaksi as $transaksi)
		                               <tr>
			                               <td>{{ $transaksi->id }}</td>
			                               <td>{{ $transaksi->pelanggan_id }}</td>
			                              <td>{{ $transaksi->sopir_id }}</td>
		                              	<td>{{ $transaksi->transaksi_tglmulai }}</td>
                                    <td>{{ $transaksi->transaksi_tglselesai }}</td>
                                    <td>{{ $transaksi->transaksi_hari }}</td>
                                    <td>{{ $transaksi->transaksi_tglovertime }}</td>
                                    <td>{{ $transaksi->transaksi_hariovertime }}</td>
                                    <td>{{ $transaksi->transaksi_total }}</td>
                                    <td>{{ $transaksi->transaksi_status }}</td>


			                              <td>
                                            <a href="/transaksi/{{ $transaksi->id }}/detail" class="btn btn-primary">Detail</a>
				                            <a href="/transaksi/{{ $transaksi->id }}/edit" class="btn btn-warning">Edit</a>
				                           <a href="/transaksi/{{ $transaksi->id }}/delete" class="btn btn-danger"onClick="return confirm('Yakin Mau Di Hapus ?')">Hapus</a>
			                              </td>
		                               </tr>
		                                @endforeach
                                  </tbody>
                            </table>
                            <br/>
	                Halaman : {{ $data_transaksi->currentPage() }} <br/>
	            Jumlah Data : {{ $data_transaksi->total() }} <br/>
	       Data Per Halaman : {{ $data_transaksi->perPage() }} <br/>


	           {{ $data_transaksi->links() }}
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

































