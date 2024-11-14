@extends('layouts.app')

@section('content')
    <h1>Buat Laporan Baru</h1>
    <form action="{{ route('laporan.simpan') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <label for="judul">Judul Laporan:</label>
        <input type="text" name="judul" id="judul" required>

        <label for="deskripsi">Deskripsi:</label>
        <textarea name="deskripsi" id="deskripsi" required></textarea>

        <label for="tanggal">Tanggal:</label>
        <input

        