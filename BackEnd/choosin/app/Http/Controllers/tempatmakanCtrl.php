<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TempatMakan;
use Response;

class tempatmakanCtrl extends Controller
{
    //
    public function index(){
        $model = TempatMakan::LihatTempatMakan();
        return Response::json($model,200);
    }

    public function tambah(request $request){
        $nama = Input::get('nama');
    }
}
