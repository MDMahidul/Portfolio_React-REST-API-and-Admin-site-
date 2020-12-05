<?php

namespace App\Http\Controllers;
use App\ContactTableModel;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    function onContactSend(Request $request){

        $ContactArray = json_decode($request->getContent(),true);

        $name= $ContactArray['name'];
        $email=$ContactArray['email'];
        $msg=$ContactArray['msg'];

        $result=ContactTableModel::insert(['name'=>$name,'email'=>$email,'message'=>$msg]);
        if($result==true){
            return "Contact sent";
        }else{
            return "Failed";
        } 
    }
}
