<?php

namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;


class PropertyModel extends Model
{

    protected $table = 'properties';
    protected $primaryKey = 'id';
    protected $allowedFields = [

        'name',
        'address',
        'price',
        'size',
        'created_at'
    ];

}
?>