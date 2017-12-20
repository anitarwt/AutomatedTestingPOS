<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Booking;
use Response;
use Illuminate\Support\Facades\Input;


class bookingCtrl extends Controller
{
    //

    function generate($qtd){
        //generator angka dan huruf dengan panjang length yg bisa di set sesuka.
        $Caracteres = 'ABCDEFGHIJKLMOPQRSTUVXWYZ0123456789';
        $QuantidadeCaracteres = strlen($Caracteres);
        $QuantidadeCaracteres--;
        
        $Hash=NULL;
            for($x=1;$x<=$qtd;$x++){
                $Posicao = rand(0,$QuantidadeCaracteres);
                $Hash .= substr($Caracteres,$Posicao,1);
            }
        return $Hash;
        } 


    public function index(){
        $model = Booking::Lihat_booking();
        return json($query,200);
    }

    public function lihatdaftarbooking(request $request,$id){
        $model = Booking::Lihat_daftar_booking($id);
        return json($model,200);
    }

    public function buat_booking(request $request,$id){
        $atasnama = Input::get('nama');
        $tanggal = Input::get('tanggal');
        $waktu = Input::get('waktu');
        $datetime = $tanggal .' '.$waktu;
        $idtempatmakan = Input::get('idtempatmakan');
        $catatan = Input::get('catatan');
        $kode = bookingCtrl::generate(12);
        
        $data = array([
            'id_user' => $id,
            'atas_nama' => $nama,
            'kode' => $kode,
            'tanggal' => $tanggal,
            'id_tempat_makan' => $tempatmakan,
            'comments' => $catatan,
            'status' => '1',
        ]);
        $model = Booking::tambah_booking($data);
        $model2 = Booking::dapat_latest_id($id);
        return json($model2,200);
    }

    public function delete_booking(request $request,$id){
        $model = Booking::Delete_booking($id);
        return json('sucess',200);
    }

    public function metode_pembayaran(request $request,$kode){
        $metode = Input::get('metode');
        $total = Input::get('total_bayar');
        $data = array([
            'metode_bayar'=>$metode,
            'total_bayar'=>$total,
            'status_bayar'=>'0'
        ]);
        $model = Booking::edit_booking($kode,$data);
    }

    public function konfirmasi_pembayaran(request $request,$kode){
        $atasnama = Input::get('atasnama');
        $tanggal = Input::get('tanggal');
        $data = array([
            'atas_nama' => $atasnama,
            'tanggal_konfirmasi' => $tanggal,
            'status_bayar'=>'1'
        ]);
    }
    

}
