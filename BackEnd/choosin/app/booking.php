<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class booking extends Model
{
    //
    public static function Lihat_booking(){
        $query =  DB::table('booking')->get();
        return $query;
    }

    public static function tambah_booking($data){
        $query = DB::table('booking')->insert($data);
    }

    public static function edit_booking($id,$data){
        $query = DB::table('booking')
        ->where('id_booking', $where)
        ->update($data);
    }

    public static function Delete_booking($id){
        $query = DB::table('booking')
        ->where('id_booking', $id)
        ->update(['status'=>'0']);
    }

    public static function Caribooking($id){
        $query = DB::table('booking')->where($id)->get();
        return $query;
    }

    public static function JoinBooking($id){
        $query = DB::table('booking')
        ->join('users', 'users.id_user', '=', 'booking.user_id')
        ->join('pembayaran','pembayaran.id_booking', '=', 'booking.id_booking')
        ->select('booking.*', 'users.nama', 'pembayaran.total_bayar')
        ->where('booking.id_user',$id)
        ->get();
        return $query;
    }

}
