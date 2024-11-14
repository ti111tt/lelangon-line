@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Buat Lelang Baru</h1>
    
    <form action="{{ route('lelang.store') }}" method="POST">
        @csrf

        <div class="form-group">
            <label for="id_barang">Pilih Barang</label>
            <select name="id_barang" id="id_barang" class="form-control" required>
                <option value="" disabled selected>Pilih Barang</option>
                @foreach($barangs as $barang)
                    <option value="{{ $barang->id }}">{{ $barang->nama_barang }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="tanggal_mulai">Tanggal Mulai</label>
            <input type="date" class="form-control" name="tanggal_mulai" id="tanggal_mulai" required>
        </div>

        <div class="form-group">
            <label for="status">Status Lelang</label>
            <select name="status" id="status" class="form-control">
                <option value="dibuka">Dibuka</option>
                <option value="ditutup">Ditutup</option>
                <option value="selesai">Selesai</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection
