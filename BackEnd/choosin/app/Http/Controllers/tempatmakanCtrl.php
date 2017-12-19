<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TempatMakan;
use Response;
use Illuminate\Support\Facades\Input;
use File;


class tempatmakanCtrl extends Controller
{

    public function uniqueFilename($path, $nama, $extension) {
        $output = $nama;
        $basename = basename($nama, '.' . $extension);
        $i = 2;
        while(File::exists($path . '/' . $output)) {
            $output = $basename . $i . '.' . $extension;
            $i ++;
        }
        return $output;
    }

    //
    public function index(){
        $model = TempatMakan::LihatTempatMakan();
        return Response::json($model,200);
    }


    public function tambah(request $request){
        $nama = Input::get('nama');
        $alamat = Input::get('alamat');
        $file = Input::file('foto');
        $destination = public_path() . '/uploads/images';
        $name = tempatmakanCtrl::uniqueFilename($destination, $file->getClientOriginalName(), $file->getClientOriginalExtension());
        $url =  public_path() . '/uploads/images/'.$name;
        $file->move($destination, $name); 
        $idpemilik = Input::get('id_pemilik');
        $latitude = Input::get('latitude');
        $longitude = Input::get('lognitude');
        $kontak = Input::get('kontak');

        $inputan = array([
                'nama_tempatmakan' => $nama,
                'alamat' => $alamat,
                'foto' => $url,
                'id_pemilik' => $idpemilik,
                'latitude' => $latitude,
                'longitude' => $longitude,
                'kontak' => $kontak,
                'status' => '1'
            ]);
        $model = TempatMakan::TambahTempatMakan($inputan);
        return Response::json("success",201);
    }

    public function cari($kriteria,$input){
    if($kriteria = "nama"){
        $data = array([
            'nama' => $input
        ]);
        TempatMakan::CariTempat($data);
    }elseif($kriteria = "jarak"){

    }
    }

    public function edit(Request $request,$id){
        $nama = Input::get('nama');
        $alamat = Input::get('alamat');
        $file = Input::file('foto');
        $destination = public_path() . '/uploads/images';
        $name = tempatmakanCtrl::uniqueFilename($destination, $file->getClientOriginalName(), $file->getClientOriginalExtension());
        $url =  public_path() . '/uploads/images/'.$name;
        $file->move($destination, $name); 
        $idpemilik = Input::get('id_pemilik');
        $latitude = Input::get('latitude');
        $longitude = Input::get('lognitude');
        $kontak = Input::get('kontak');

        $inputan = array([
                'nama_tempatmakan' => $nama,
                'alamat' => $alamat,
                'foto' => $url,
                'id_pemilik' => $idpemilik,
                'latitude' => $latitude,
                'longitude' => $longitude,
                'kontak' => $kontak,
                'status' => '1'
            ]);
        $model = TempatMakan::EditTempatMakan($id,$inputan);
        return Response::json("success",201);
    }


    public function editform($id){
        $data = array([
            'id_tempatmakan'=>$id
        ]);
        $model = TempatMakan::CariTempat($data);
        return Response::json($model,200);
    }

    public function DeleteTempatMakan($id){
        $model = TempatMakan::DeleteTempatMakan($id);
        return Response::json("Succes Delete",201);
    }

    
}
