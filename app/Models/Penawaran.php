<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class Penawaran extends Model
{
    use HasFactory;

    protected $fillable = ['id_user', 'id_barang', 'harga_penawaran'];

    protected $table = 'penawarans';

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'id_barang', 'id_barang'); // Reverse One-to-Many relationship
    }

    public function user() {
        return $this->belongsTo(User::class, 'id_user');
    }

    public function lelang()
{
    return $this->hasOne(Lelang::class, 'id_barang', 'id_barang'); // Assuming one-to-one with Lelang
}

}