<?php

namespace App\Models;

use CodeIgniter\Model;

class DiskonModel extends Model
{
    protected $table = 'diskon';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'kode_voucher',
        'tanggal_mulai',
        'tanggal_akhir',
        'besar_diskon',
        'aktif'
    ];
    protected $returnType = 'App\Entities\Diskon';
    protected $useTimestamps = false;
}
