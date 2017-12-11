<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    //
    public static function loginadmin($username,$password){
    $query = $query =  DB::table('admin')
    ->where(['username' => $username,'password' => $password])
    ->get();
    if($query){
        return $query;
    }else{
        return false;
    }
    }

    public static function tambah_admin($data){
        $query = DB::table('admin')->insert($data);
    }

    public static function edit_admin($id,$data){
        $query = DB::table('admin')
        ->where('id_admin', $where)
        ->update($data);
    }

    public static function Delete_admin($id){
        $query = DB::table('admin')
        ->where('id_admin', $id)
        ->update(['status'=>'0']);
    }

    public static function Lihat_admin(){
        $query =  DB::table('admin')->get();
        return $query;
    }

}
