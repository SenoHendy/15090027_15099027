@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Kendaraan :</p>
	<form action="/kendaraan/" method="GET">
		<input type="text" name="cari" placeholder="Cari Kendaraan ..">
		<input type="submit" value="CARI">
	</form>

	<br/>
                <a href="/kendaraan/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Kendaraan</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                  <tr>
                                      <th scope="col">Platnomor</th>
                                      <th scope="col">Merk</th>
                                      <th scope="col">Tipe</th>
                                      <th scope="col">Tahun</th>
                                      <th scope="col">Seat</th>
                                      <th scope="col">Fasilits</th>
                                      <th scope="col">Status</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($data_kendaraan as $kendaraan)
		                              <tr>
  			                            <td>{{ $kendaraan->kendaraan_platnomor }}</td>
  			                            <td>{{ $kendaraan->kendaraan_merk }}</td>
  		                              <td>{{ $kendaraan->kendaraan_tipe }}</td>
                                    <td>{{ $kendaraan->kendaraan_tahunrakit }}</td>
                                    <td>{{ $kendaraan->kendaraan_seat }}</td>
                                    <td>{{ $kendaraan->kendaraan_fasilitas }}</td>
                                    <td>{{ $kendaraan->kendaraan_status }}</td>
  			                            <td>
                                      <a href="/kendaraan/{{ $kendaraan->id }}/detail" class="btn btn-primary">Detail</a>
  				                            <a href="/kendaraan/{{ $kendaraan->id }}/edit" class="btn btn-warning">Edit</a>
  				                            <a href="/kendaraan/{{ $kendaraan->id }}/delete" class="btn btn-danger"onClick="return confirm('Yakin Mau Di Hapus ?')">Hapus</a>
                                    </td>
		                              </tr>

                                  @endforeach

                                  </tbody>
                            </table>

                            <br/>

	                Halaman : {{ $data_kendaraan->currentPage() }} <br/>
	            Jumlah Data : {{ $data_kendaraan->total() }} <br/>
	       Data Per Halaman : {{ $data_kendaraan->perPage() }} <br/>


	           {{ $data_kendaraan->links() }}
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

































