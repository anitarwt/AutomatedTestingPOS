<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class BookingDetail extends Model
{
    //
    public static function Lihat_booking_detail(){
        $query =  DB::table('booking_detail')->get();
        return $query;
    }

    public static function tambah_booking_detail($data){
        $query = DB::table('booking_detail')->insert($data);
    }

    public static function edit_booking_detail($id,$data){
        $query = DB::table('booking_detail')
        ->where('id_bookingdetail', $where)
        ->update($data);
    }

    public static function Delete_booking_detail($id){
        $query = DB::table('booking_detail')
        ->where('id_bookingdetail', $id)
        ->update(['status'=>'0']);
    }

    public static function Caribooking_detail($kriteria){
        $query = DB::table('booking_detail')->where($kriteria)->get();
        return $query;
    }

    public static function JoinDetailBooking($id){
        $query = DB::table('booking_detail')
        ->join('menu_makanan', 'menu_makanan.id_menu', '=', 'booking.id_menu')
        ->select('booking_detail.*','menu_makanan.nama')
        ->where('booking_detail.id_booking',$id);
    }

    
}
