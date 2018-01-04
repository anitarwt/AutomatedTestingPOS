<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nama', 'email', 'password', 'no_hp', 'jenis_kelamin', 'status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    public static function loginuser($username,$password)
    {
        $query = $query =  DB::table('users')
        ->where(['nama' => $username,'password' => $password])
        ->get();
            if($query){
                return $query;
            }else{
                return false;
            }
    }
}
