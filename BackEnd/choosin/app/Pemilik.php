<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Pemilik extends Model
{
    public static function LoginPemilik($username,$password)
    {
        $query = $query =  DB::table('admin')
        ->where(['username' => $username,'password' => $password])
        ->get();
            if($query){
                return $query;
            }else{
                return false;
            }
    }
    //
    public static function Lihat_pemilik(){
        $query =  DB::table('pemilik')->get();
        return $query;
    }

    public static function tambah_pemilik($data){
        $query = DB::table('pemilik')->insert($data);
    }

    public static function edit_pemilik($id,$data){
        $query = DB::table('pemilik')
        ->where('id_pemilik', $where)
        ->update($data);
    }

    public static function Delete_pemilik($id){
        $query = DB::table('pemilik')
        ->where('id_pemilik', $id)
        ->update(['status'=>'0']);
    }

    public static function CariPemilik($id){
        $query = DB::table('pemilik')->where($kriteria)->get();
        return $query;
    }
}
