<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class TempatMakan extends Model
{
    //

    public static function Lihat_tempat_makan(){
        $query =  DB::table('tempat_makan')->get();
        return $query;
    }

    public static function tambah_tempat_makan($data){
        $query = DB::table('tempat_makan')->insert($data);
    }

    public static function edit_tempat_makan($id_tempatmakan,$data){
        $query = DB::table('tempat_makan')
        ->where('id_tempatmakan', $where)
        ->update($data);
    }

    public static function Delete_tempat_makan($id_tempatmakan){
        $query = DB::table('tempat_makan')
        ->where('id_tempatmakan', $id_tempatmakan)
        ->update(['status'=>'0']);
    }

    public static function CariTempat($kriteria){
        $query = DB::table('tempat_makan')->where($kriteria)->get();
        return $query;
    }
}
