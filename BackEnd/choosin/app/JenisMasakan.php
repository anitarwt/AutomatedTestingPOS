<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JenisMasakan extends Model
{
    //
    public static function Lihat_jenis_masakan(){
        $query =  DB::table('jenis_masakan')->get();
        return $query;
    }

    public static function tambah_jenis_masakan($data){
        $query = DB::table('jenis_masakan')->insert($data);
    }

    public static function edit_jenis_masakan($id_jenismasakan,$data){
        $query = DB::table('jenis_masakan')
        ->where('id_jenismasakan', $where)
        ->update($data);
    }

    public static function Delete_jenis_masakan($id_jenismasakan){
        $query = DB::table('jenis_masakan')
        ->where('id_jenismasakan', $id_jenismasakan)
        ->update(['status'=>'0']);
    }

    public static function CariTempat($kriteria){
        $query = DB::table('jenis_masakan')->where($kriteria)->get();
        return $query;
    }
}
