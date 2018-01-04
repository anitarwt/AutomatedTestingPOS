<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
/**
* 
*/
class Pembayaran extends Model
{
	
	public static function Lihat_Pembayaran(){
        $query =  DB::table('pembayaran')->get();
        return $query;
    }
     public static function tambah_pembayaran($data){
        $query = DB::table('pembayaran')->insert($data);
    }
     public static function edit_pembayaran($id_bank,$data){
        $query = DB::table('pembayaran')
        ->where('id_bank', $where)
        ->update($data);
    }
     public static function Delete_pembayaran($id_bank){
        $query = DB::table('pembayaran')
        ->where('id_bank', $id_bank);
        return $query;
    }
   


}