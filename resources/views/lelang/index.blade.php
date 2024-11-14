@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Daftar Lelang</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <table class="table">
        <thead>
            <tr>
                <th>ID Lelang</th>
                <th>ID Barang</th>
                <th>Tanggal Mulai</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach($lelangs as $lelang)
                <tr>
                    <td>{{ $lelang->id_lelang }}</td>
                    <td>{{ $lelang->id_barang }}</td>
                    <td>{{ $lelang->tanggal_mulai }}</td>
                    <td>{{ ucfirst($lelang->status) }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
