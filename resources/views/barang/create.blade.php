<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Barang</title>
   
</head>
<body>

<div class="container mt-5">
    <h1>Tambah Barang</h1>

    <!-- Display success message if a barang was added successfully -->
    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <!-- Display form for adding new barang -->
    <form action="{{ route('barang.store') }}" method="POST">
        @csrf

        <div class="form-group">
            <label for="nama_barang">Nama Barang:</label>
            <input type="text" class="form-control" id="nama_barang" name="nama_barang" value="{{ old('nama_barang') }}" required>
            @error('nama_barang')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="deskripsi_barang">Deskripsi Barang:</label>
            <textarea class="form-control" id="deskripsi_barang" name="deskripsi_barang" rows="3" required>{{ old('deskripsi_barang') }}</textarea>
            @error('deskripsi_barang')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="harga_awal">Harga Awal:</label>
            <input type="number" step="0.01" class="form-control" id="harga_awal" name="harga_awal" value="{{ old('harga_awal') }}" required>
            @error('harga_awal')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="form-group">
            <label for="jumlah">Jumlah:</label>
            <input type="number" class="form-control" id="jumlah" name="jumlah" value="{{ old('jumlah') }}" required>
            @error('jumlah')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Tambah Barang</button>
    </form>
</div>

</body>
</html>
