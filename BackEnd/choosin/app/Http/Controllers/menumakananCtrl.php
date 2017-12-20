<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TempatMakan;
use App\MenuMakanan;
use Response;
use Illuminate\Support\Facades\Input;
use File;

class menumakananCtrl extends Controller
{
    
    //membuat unik file name
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

    public function index(request $request,$id){
        $model = MenuMakanan::menumakan($id);
        return Response::json($model,200);
    }

    public function lihatsemuamenu(){
        $model = MenuMakanan::Lihat_menu_makanan();
        return Response::json($model,200);
    }

    public function tambah(request $request){
        $nama = Input::get('nama');
        $harga = Input::get('harga');
        $file = Input::file('foto');
        $destination = public_path() . '/uploads/images/makanan';
        $name = tempatmakanCtrl::uniqueFilename($destination, $file->getClientOriginalName(), $file->getClientOriginalExtension());
        $url =  public_path() . '/uploads/images/makanan/'.$name;
        $file->move($destination, $name); 
        $idjenismasakan = Input::get('id_jenis');
        $idtempatmakan = Input::get('id_tempat');
     
        $data = array([
                'nama_makanan' => $nama,
                'harga' => $harga,
                'foto' => $url,
                'id_jenis_masakan' => $idjenismasakan,
                'id_tempatmakan' => $idtempatmakan,
                'status' => '1'
            ]);

        $model = MenuMakanan::tambah_menu_makanan($data);
        return Response::json("succes",200);
    }

    public function update(request $request,$id){
        $nama = Input::get('nama');
        $harga = Input::get('harga');
        $file = Input::file('foto');
        $destination = public_path() . '/uploads/images/makanan';
        $name = menumakananCtrl::uniqueFilename($destination, $file->getClientOriginalName(), $file->getClientOriginalExtension());
        $url =  public_path() . '/uploads/images/makanan/'.$name;
        $file->move($destination, $name); 
        $idjenismasakan = Input::get('id_jenis');
        $idtempatmakan = Input::get('id_tempat');
     
        $data = array([
                'nama_makanan' => $nama,
                'harga' => $harga,
                'foto' => $url,
                'id_jenis_masakan' => $idjenismasakan,
                'id_tempatmakan' => $idtempatmakan,
                'status' => '1'
            ]);

        $model = MenuMakanan::edit_menu_makanan($id,$data);
        return Response::json("succes",200);
    }

    public function delete(request $request,$id){
        $model = MenuMakanan::Delete_menu_makanan($id);
        return Response::json("succes",200);
    }

    
}
