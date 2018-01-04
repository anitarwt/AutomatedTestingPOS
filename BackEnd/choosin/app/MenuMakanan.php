<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MenuMakanan extends Model
{
    //memakan kriteria ID
    public static function menumakan($id){
         $query = DB::table('menu_makanan')
        ->join('tempat_makan', 'menu_makanan.id_tempatmakan', '=', 'tempat_makan.id_tempatmakan')
        ->join('jenis_masakan','menu_makanan.id_jenis_masakan', '=', 'jenis_masakan.id_jenis_masakan')
        ->select('menu_makanan.*','tempat_makan.nama_tempatmakan','jenis_masakan.nama_jenis')
        ->where('menu_makanan.id_tempatmakan','=',$id)
        ->get();
        return $query;
    }
    
    public static function Lihat_menu_makanan(){
        $query = DB::table('menu_makanan')
        ->join('tempat_makan', 'menu_makanan.id_tempatmakan', '=', 'tempat_makan.id_tempatmakan')
        ->join('jenis_masakan','menu_makanan.id_jenis_masakan', '=', 'jenis_masakan.id_jenis_masakan')
        ->select('menu_makanan.*','tempat_makan.nama_tempatmakan','jenis_masakan.nama_jenis')
        ->get();
        return $query;
    }

    public static function tambah_menu_makanan($data){
        $query = DB::table('menu_makanan')->insert($data);
    }

    public static function edit_menu_makanan($id_menu,$data){
        $query = DB::table('menu_makanan')
        ->where('id_menu', $id_menu)
        ->update($data);
    }

    public static function Delete_menu_makanan($id_menu){
        $query = DB::table('menu_makanan')
        ->where('id_menu', $id_menu)
        ->update(['status'=>'0']);
    }

    public static function Carijenismasakan($kriteria){
        $query = DB::table('menu_makanan')->where($kriteria)->get();
        return $query;
    }

    public static function JoinMakanan($id){
        $query = DB::table('menu_makanan')
        ->join('jenis_masakan', 'menu_makanan.id_jenis_masakan', '=', 'jenis_masakan.id_jenis_masakan')
        ->select('menu_makanan.*','jenis_masakan.nama_jenis')
        ->where('menu_makanan.id_menu',$id)
        ->where('menu_makanan.status','=','1')
        ->get();
    }

    public static function TampilHarga(){
        $query = DB::table('menu_makanan')
        ->select('harga')
        ->get();
        return $query;
    }

    public static function Avg_harga(){
        $query = DB:table('menu_makanan')
        ->where('id_tempatmakan',$id)
        ->avg('harga')


    }
}
