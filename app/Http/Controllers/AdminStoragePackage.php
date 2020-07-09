<?php


namespace App\Http\Controllers;


use App\Admin;
use App\StoragePackage;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;

class AdminStoragePackage extends BaseController
{
    function __construct()
    {
        Config::set('jwt.user', Admin::class);
        Config::set('jwt.identifier', 'admin_id');
        Config::set('auth.providers', ['users' => [
            'driver' => 'eloquent',
            'model' => Admin::class,
        ]]);
    }

    function getList() {
        return DB::table('storage_package')->where('disable', '=', 0)->get();
    }

    public function getStoragePackageList() {
        return [
            'list' => $this->getList()
        ];
    }

    public function insertStoragePackage(Request $request) {
        $package = DB::table('storage_package')->where('name', $request->name)->first();
        if(!$package) {
            $new = new StoragePackage($request->all());
            $new->save();
            return [
                'list' => $this->getList(),
                'RequestSuccess' => true,
                'msg' => 'Created!'
            ];
        }
        return ['msg' => 'Package is already exists!'];
    }

    public function updateStoragePackage(Request $request) {
        $package  = StoragePackage::find($request->storagePackage_id);
        if($package) {
            $package->name = $request->name;
            $package->storage_size = $request->storage_size;
            $package->price = $request->price;
            $package->save();
            return [
                'list' => $this->getList(),
                'RequestSuccess' => true,
                'msg' => 'Updated!'
            ];
        }
        return ['msg' => 'Package is not exists!'];
    }

    public function deleteStoragePackage(Request $request) {
        $package  = StoragePackage::find($request->storagePackage_id);
        if($package) {
            $package->disable = 1;
            $package->save();
            return [
                'list' => $this->getList(),
                'RequestSuccess' => true,
                'msg' => 'Deleted!'
            ];
        }
        return ['msg' => 'Package is not exists!'];
    }

}