<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Illuminate\Support\Facades\Redirect;
class Property_details extends Controller
{
    public function index(){

        return view('property_listing');
    }

    public function form_validation()
    {

        return view('form_validation');
    }

    public function form_submit(request $request){

    $validator = Validator::make($request->all(), [
        'full_name' => 'required|min:5||regex:/^[\pL\s\-]+$/u', 
        'phone_number' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
        'email' => 'required|unique:user_basic_details,email', 
        'dob' => 'required||date|before_or_equal:'.\Carbon\Carbon::now()->subYears(15)->format('Y-m-d'),
    ]);

    if ($validator->fails()) {
        return redirect('form-validation')
                    ->withErrors($validator)
                    ->withInput();
    }
        // add user data in user_basic_details table
         DB::table('user_basic_details')->insert(['full_name'=>$request->full_name,'phone_number'=>$request->phone_number,
         	'email'=>$request->email,'dob'=>$request->dob]);
        
       return redirect('/');
    }
}
