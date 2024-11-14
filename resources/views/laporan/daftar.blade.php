@extends('layouts.app')

@section('content')
    <h1>Daftar Laporan</h1>
    <a href="{{ route('laporan.buat') }}" class="btn btn-primary">Buat Laporan Baru</a>
    <ul>
        @foreach($laporans as $laporan)
            <li>{{ $laporan->judul }} - {{ $laporan->tanggal }}</li>
        @endforeach
    </ul>
@endsection

