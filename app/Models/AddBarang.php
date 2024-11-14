<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddBarang extends Model
{
    use HasFactory;

    protected $table = 'barangs'; // Define the table name
    protected $primaryKey = 'id_barang'; // Define the primary key

    protected $fillable = [
        'nama_barang', 
        'deskripsi_barang', 
        'harga_awal', 
        'jumlah',
    ];
}
