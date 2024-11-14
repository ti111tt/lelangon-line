@extends('layouts.app')

@section('content')
    <h1>{{ $barang->nama_barang }}</h1>
    <p>{{ $barang->deskripsi_barang }}</p>
    <p><strong>Harga Awal: </strong>Rp {{ number_format($barang->harga_awal, 0, ',', '.') }}</p>
    <p><strong>Status Lelang: </strong>{{ $lelang->status }}</p>

    <h3>Penawaran</h3>
    <ul>
        @foreach($penawarans as $penawaran)
            <li>{{ $penawaran->user->nama_lengkap }} - Rp {{ number_format($penawaran->harga_penawaran, 0, ',', '.') }}</li>
        @endforeach
    </ul>

    
        <form action="{{ route('barang.bid', $barang->id_barang) }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="harga_penawaran">Masukkan Harga Penawaran:</label>
                <input type="number" class="form-control" name="harga_penawaran" min="1" required>
            </div>
            <button type="submit" class="btn btn-success">Ajukan Penawaran</button>
        </form>
    
@endsection
