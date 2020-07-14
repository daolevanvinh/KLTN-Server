<?php


namespace App\Http\Controllers;

use App\StoragePackage;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class UserStoragePackage extends BaseController
{
    public function getStorePackgetList(Request $request) {
        return [
            'list' => DB::table('storage_package')->where('disable', 0)->get()
        ];
    }
}