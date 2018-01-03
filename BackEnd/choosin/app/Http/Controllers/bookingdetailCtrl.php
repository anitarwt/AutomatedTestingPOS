<?php

namespace App\Http\Controllers;
use App\BookingDetail;
use Response;
use Illuminate\Support\Facades\Input;

use Illuminate\Http\Request;

class bookingdetailCtrl extends Controller
{
    //
    public function index(){
        $model = BookingDetail::Lihat_booking_detail();
        return json($model,200);
    }

    public function tambah(request $request){
        $makanan = Input::get('id_menu');
        $jumlah = Input::get('jumlah');
        $harga  = Input::get('harga');
        $idbooking = Input::get('idbooking');
        

        foreach($namamakan as $key => $n){
            $total = $harga[$key] * $jumlah[$key];
            $data = array([
                'id_booking' => $idbooking,
                'id_menu' => $makanan,
                'jumlah' => $jumlah[$key],
                'total' => $total
            ]);
            $model = BookingDetail::tambah_booking_detail($data);
        }    
        return Response::json('sucess',200);
    }

    public function lihatrincian($id){
        $model = BookingDetail::rincian($id);
        return Response::json($model,200);
    }

    
}
