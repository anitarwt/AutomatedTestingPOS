<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Pembayaran extends Model
{
    //
    public static function lihat_pembayaran(){
        $query =  DB::table('pembayaran')->get();
        return $query;
    }

    public static function tambah_pembayaran($data){
        $query = DB::table('pembayaran')->insert($data);
    }

    public static function edit_pembayaran($id,$data){
        $query = DB::table('pembayaran')
        ->where('id_pembayaran', $where)
        ->update($data);
    }

    public static function delete_pembayaran($id){
        $query = DB::table('pembayaran')
        ->where('id_pembayaran', $id)
        ->update(['status'=>'0']);
    }

    public static function caripembayaran($kriteria){
        $query = DB::table('pembayaran')->where($kriteria)->get();
        return $query;
    }
}
