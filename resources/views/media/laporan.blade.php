@extends('layouts.app')

@section('content')
    <h1 class="text-center">Laporan Lelang</h1>

    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Nama Barang</th>
                <th>Nama User</th>
                <th>Harga Penawaran</th>
                <th>Harga Awal</th>
                <th>Tanggal Penawaran</th>
            </tr>
        </thead>
        <tbody>
            @foreach($laporan as $item)
                <tr>
                    <td>{{ $item->barang->nama_barang }}</td>
                    <td>{{ $item->user->nama_lengkap }}</td>
                    <td>Rp {{ number_format($item->harga_penawaran, 0, ',', '.') }}</td>
                    <td>Rp {{ number_format($item->barang->harga_awal, 0, ',', '.') }}</td>
                    <td>{{ \Carbon\Carbon::parse($item->created_at)->format('d-m-Y H:i') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

@endsection

@section('styles')
    <style>
        /* Styling for the table */
        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
        }

        /* Hide print button when printing */
        @media print {
            .no-print {
                display: none; /* Ensure the button does not show up during printing */
            }
        }

        /* Additional print styling */
        @media print {
            body {
                font-family: Arial, sans-serif;
                font-size: 12px;
                margin: 20px;
            }

            h1 {
                font-size: 18px;
                margin-bottom: 20px;
                text-align: center;
            }

            table {
                margin-bottom: 20px;
                page-break-inside: avoid;
            }

            th, td {
                border: 1px solid #000;
                padding: 8px;
            }

            th {
                background-color: #f8f8f8;
                color: #000;
            }

            td {
                vertical-align: top;
            }
        }
    </style>
@endsection
