<?php


namespace App;


use Illuminate\Database\Eloquent\Model;

class StorageUser extends Model
{
    protected $table = "storage_user";
    protected $primaryKey = "user_id";
    protected $fillable = ['json_storagePackage', 'user_id'];
}