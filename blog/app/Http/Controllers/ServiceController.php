<?php

namespace App\Http\Controllers;
use App\ServiceModel;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    function onSelectAll(){
        $result=ServiceModel::all();
        return $result;
    }
}
