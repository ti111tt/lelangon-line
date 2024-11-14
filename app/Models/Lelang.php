<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lelang extends Model
{
    protected $table = 'lelangs'; // Ensure this matches your table name

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'id_barang', 'id_barang');
        // 'id_barang' is the foreign key in the `lelangs` table
        // 'id_barang' is the primary key in the `barangs` table
    }
}
