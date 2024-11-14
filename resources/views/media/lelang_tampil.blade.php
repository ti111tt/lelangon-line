<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Lelang</title>
</head>
<body>
    <h1>Daftar Lelang</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID Lelang</th>
                <th>ID Barang</th>
                <th>Tanggal Mulai</th>
                <th>Tanggal Selesai</th>
                <th>Status</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($lelangs as $lelang)
                <tr>
                    <td>{{ $lelang->id_lelang }}</td>
                    <td>{{ $lelang->id_barang }}</td>
                    <td>{{ $lelang->tanggal_mulai }}</td>
                    <td>{{ $lelang->tanggal_selesai }}</td>
                    <td>{{ $lelang->status }}</td>
                    <td><a href="{{ route('barang.show', $lelang->id_barang) }}">Detail</a></td>
                    <td><a href="{{ route('laporan', $lelang->id_barang) }}">Detail</a></td>
                    
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
