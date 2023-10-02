<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsereAuthController extends Controller
{
    public function registration(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required',
                'password' => 'required|min:4',
                'email' => 'required|email|unique:users',
                'phone' => 'required|unique:users',
                'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]
        );
        // validation error
        if ($validator->fails()) {

            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 403);
        }
        $model = new User();
        $model->name = $request->name;
        $model->email = $request->email;
        $model->phone = $request->phone;
        $model->school = $request->school;
        $model->dob = Carbon::parse($request->dob)->format('Y-m-d');
        $model->blood_group = $request->blood_group;
        $model->secondary_phone = $request->secondary_phone;
        $model->present_address = $request->present_address;
        $model->occupation = $request->occupation;
        $model->additional_info_profession = $request->additional_info_profession;
        $model->office_location = $request->office_location;
        $model->emergency_contact = $request->emergency_contact;
        $model->password = Hash::make($request->password);

        if ($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $new_name = time() . '.' . $request->photo->getClientOriginalExtension();
            $path = '/images/profile/';
            $photo->move(public_path($path), $new_name);
            $model->photo = $path . $new_name;
        }

        if ($model->save()) {

            $user_access_token = $model->createToken('club85hfgufwevcxy3523jjhvcx')->plainTextToken;
        }
        return response()->json([
            'status' => 'ok',
            'user_access_token' => $user_access_token,
            'user_info' => $model,
        ], 200);
    }
    public function login(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'phone' => 'required',
                'password' => 'required',
            ]

        );

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->errors(),
            ]);
        }
        //check 
        $user = User::where('phone', $request->phone)->first();

        if (!$user) {
            return response()->json([
                "status" => "error",
                'message' => 'Please provide valid Phone Number...'
            ], 401);
        }
        //check password
        if (!Hash::check($request->password, $user->password)) {
            return response([
                "status" => "error",
                'message' => 'Wrong Password..!'
            ], 401);
        }

        $user_access_token = $user->createToken('club85hfgufwevcxy3523jjhvcx')->plainTextToken;

        return response()->json([
            'status' => 'ok',
            'user_access_token' => $user_access_token,
            'user_info' => $user,
        ], 200);
    }
}
