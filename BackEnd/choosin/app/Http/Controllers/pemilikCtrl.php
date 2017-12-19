<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TempatMakan;
use App\Pemilik;
use Response;
use Illuminate\Support\Facades\Input;
use File;

class pemilikCtrl extends Controller
{
    //
    public function tempatpemilik(request $request,$id){
        $model = TempatMakan::TampilTempatPemilik($id);
        return Response::json("succes",200);
    }

    public function loginpemilik(request $request){
        $username = Input::get('username');
        $password = Input::get('password');
        $model = Pemilik::LoginPemilik($username,$password);
        if($model){
            return Response::json("succes",200);
        }
            return Response::json("failed",501);
    }
}
