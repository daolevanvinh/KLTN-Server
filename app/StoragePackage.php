<?php


namespace App;


use Illuminate\Database\Eloquent\Model;

class StoragePackage extends Model
{
    protected $table = "storage_package";
    protected $primaryKey = "storagePackage_id";
    protected $fillable = ['storagePackage_id','storage_size','name','price', 'disable'];
}