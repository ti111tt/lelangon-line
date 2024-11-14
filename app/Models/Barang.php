<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;

    protected $fillable = ['id_barang', 'nama_barang', 'deskripsi_barang', 'harga_awal', 'jumlah'];

    protected $primaryKey = 'id_barang';  // Specify the primary key if it's not 'id'

    public $incrementing = false;  // If 'id_barang' is non-incrementing (e.g., UUID), set this to false
    protected $keyType = 'string';  // Set this to 'string' if 'id_barang' is not an integer

    public function lelang()
    {
        return $this->hasOne(Lelang::class, 'id_barang', 'id_barang'); // One-to-One relationship
    }

    public function penawarans()
    {
        return $this->hasMany(Penawaran::class, 'id_barang', 'id_barang'); // One-to-Many relationship
    }
}
