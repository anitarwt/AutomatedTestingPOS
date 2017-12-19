<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\JenisMasakan;
use Response;
use Illuminate\Support\Facades\Input;

class jenismakananCtrl extends Controller
{
    //
    public function index(){
        $model = JenisMasakan::Lihat_jenis_masakan();
        return Response::json($model,200);
    }

    public function tambah(){
        $nama = Input::Get('nama');
        $data = array(
            'nama_jenis' => $nama,
            'status' => '1'
        );
        $model = JenisMasakan::tambah_jenis_masakan($data);
        return Response::json('sucess',200);
    }

    public function delete(request $request,$id){
        $model = JenisMasakan::Delete_jenis_masakan($id);
    }
}
