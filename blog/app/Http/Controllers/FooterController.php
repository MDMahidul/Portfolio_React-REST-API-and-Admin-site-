<?php

namespace App\Http\Controllers;
use App\FooterTableModel;
use Illuminate\Http\Request;

class FooterController extends Controller
{
    function onSelectAll(){
        $result=FooterTableModel::all();
        return $result;
    }
}
