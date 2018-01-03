<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use File;
use Response;

class filestorage extends Controller
{
    //

    public function tempatmakanfile(request $request,$filename){
        $path = storage_path('public/tempatmakan/' . $filename);

        if (!File::exists($path)) {
            abort(404);
        }
    
        $file = File::get($path);
        $type = File::mimeType($path);
    
        $response = Response::make($file, 200);
        $response->header("Content-Type", $type);
    
        return $response;
    }

    public function menumakanfile(request $request,$filename){
        $path = storage_path('public/menumakan/' . $filename);

        if (!File::exists($path)) {
            abort(404);
        }
    
        $file = File::get($path);
        $type = File::mimeType($path);
    
        $response = Response::make($file, 200);
        $response->header("Content-Type", $type);
    
        return $response;
    }

    public function userfile(request $request,$filename){
        $path = storage_path('public/user/' . $filename);

        if (!File::exists($path)) {
            abort(404);
        }
    
        $file = File::get($path);
        $type = File::mimeType($path);
    
        $response = Response::make($file, 200);
        $response->header("Content-Type", $type);
    
        return $response;
    }
}
