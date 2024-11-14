<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddLelang extends Model
{
    use HasFactory;

    protected $table = 'lelangs';

    protected $fillable = ['id_barang', 'tanggal_mulai', 'status'];

    public $timestamps = true;

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'id_barang');
    }
}
