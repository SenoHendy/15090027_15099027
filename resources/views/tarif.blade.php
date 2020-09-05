@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Tarif :</p>
	<form action="/tarif" method="GET">
		<input type="text" name="cari" placeholder="Cari Tarif ..">
		<input type="submit" value="CARI">
	</form>

	<br/>
                <a href="/tarif/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Tarif</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                  <tr>
                                      <th scope="col">Kendaraan Plat Nomor</th>
                                      <th scope="col">Tarif Perhari</th>
                                      <th scope="col">Tarif Overtime</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($data_tarif as $tarif)
		                               <tr>
  			                             <td>{{ $tarif->kendaraan_platnomor }}</td>
  			                             <td>{{ $tarif->tarif_perhari}}</td>
  		                               <td>{{ $tarif->tarif_overtime }}</td>
  			                             <td>
                                        <a href="/tarif/{{ $tarif->id }}/detail" class="btn btn-primary">Detail</a>
		                                    <a href="/tarif/{{ $tarif->id }}/edit" class="btn btn-warning">Edit</a>
		                                    <a href="/tarif/{{ $tarif->id }}/delete" class="btn btn-danger"onClick="return confirm('Yakin Mau Di Hapus ?')">Hapus</a>
			                               </td>
		                               </tr>
		                                @endforeach

                                  </tbody>
                            </table>
                        </br>
	                Halaman : {{ $data_tarif->currentPage() }} <br/>
	            Jumlah Data : {{ $data_tarif->total() }} <br/>
	       Data Per Halaman : {{ $data_tarif->perPage() }} <br/>


	           {{ $data_tarif->links() }}
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

































