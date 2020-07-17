<?php


namespace App\Http\Controllers;


use App\Jobs\ConvertVideoForStreaming;

class Test extends Controller
{
    public function store() {
        return $this->dispatch(new ConvertVideoForStreaming(1));
    }
}