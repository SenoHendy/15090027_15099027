@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
	<br/>
                <a href="/foto/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Foto</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                  <tr>
                                      <th scope="col">Foto ID</th>
                                      <th scope="col">Nama</th>
                                      <th scope="col">Alamat</th>
                                      <th scope="col">No Telephone Pelanggan</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($data_foto as $foto)
		                               <tr>
			                               <td>{{ $foto->id }}</td>
			                               <td>{{ $foto->foto_nama }}</td>
			                              <td>{{ $foto->foto_alamat }}</td>
		                              	<td>{{ $foto->foto_telpon }}</td>
                                          <img src="{{ asset('/storage/gambar/'.$foto->foto_foto) }}" class="card-img-top w-50" alt="...">
			                              <td>
                                            <a href="/foto/{{ $foto->id }}/detail" class="btn btn-primary">Detail</a>
				                            <a href="/foto/{{ $foto->id }}/edit" class="btn btn-warning">Edit</a>
				                           <a href="/foto/{{ $foto->id }}/delete" class="btn btn-danger"onClick="return confirm('Yakin Mau Di Hapus ?')">Hapus</a>
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

































