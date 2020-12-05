<?php

namespace App\Http\Controllers;
use App\Model\ContactTableModel;
use Illuminate\Http\Request;
use App\Model\CourseTableModel;
use Illuminate\Support\Facades\Storage;

class CourseController extends Controller
{
    function CourseList(){
        $result=CourseTableModel::all();
        return $result;
    }

    function CourseDelete(Request $request){
        $id=$request->input('id');
        $course_logo=CourseTableModel::where('id','=',$id)->get(['small_img']);
        $course_logo_name=explode('/',$course_logo[0]['small_img'])[4];

        Storage::delete('public/'. $course_logo_name);

        $result=CourseTableModel::where('id','=',$id)->delete();
        return $result;
    }

    function AddCourse(Request $request){
        $courseShortName=  $request->input('courseShortName');
        $courseLongName=  $request->input('courseLongName');
        $courseShortDes=  $request->input('courseShortDes');
        $courseLongDes=  $request->input('courseLongDes');
        $courseSkill=  $request->input('courseSkill');
        $courseLink=  $request->input('courseLink');
        $videoURL=  $request->input('videoURL');
        $courseLecture=  $request->input('courseLecture');
        $courseStudent=  $request->input('courseStudent');

        $photoPath=$request->file('photo')->store('public');
        $photoName=explode("/", $photoPath)[1];
        $photoURL="http://".$_SERVER['HTTP_HOST']."/storage/".$photoName;

        $result= CourseTableModel::insert([
            'short_title'=>$courseShortName,
            'short_des'=>$courseShortDes,
            'small_img'=>$photoURL,
            'long_title'=>$courseLongName,
            'long_des'=>$courseLongDes,
            'total_lecture'=>$courseLecture,
            'total_student'=>$courseStudent,
            'skill_all'=>$courseSkill,
            'video_url'=>$videoURL,
            'course_link'=>$courseLink
        ]);
        return $result;
    }
}
