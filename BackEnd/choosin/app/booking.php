<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Booking extends Model
{
    //
    public static function Lihat_booking(){
        $query =  DB::table('booking')->get();
        return $query;
    }

    public static function dapat_latest_id($id){
        $query = DB::table('booking')
        ->select('id_booking','kode')
        ->where('id_user',$id)
        ->latest();
        return $query;
    }
    public static function tambah_booking($data){
        $query = DB::table('booking')->insert($data);
    }

    public static function edit_booking($kode,$data){
        $query = DB::table('booking')
        ->where('kode', $kode)
        ->update($data);
    }

    public static function Delete_booking($id){
        $query = DB::table('booking')
        ->where('id_booking', $id)
        ->update(['status'=>'0']);
        return $query;
    }

    public static function Caribooking($id){
        $query = DB::table('booking')->where($id)->get();
        return $query;
    }

    public static function Lihat_daftar_booking($id){
        $query = DB::table('booking')
        ->join('users', 'users.id_user', '=', 'booking.id_user')
        ->select('booking.*', 'users.nama')
        ->where('booking.id_user',$id)
        ->get();
        return $query;
    }
    public static function status_pembayaran($id){
        $query = DB::table('booking')
        ->where('status','=','1')
        ->get();
        return $query;
    }

}
