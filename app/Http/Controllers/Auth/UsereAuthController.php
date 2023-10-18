<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\TempUser;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsereAuthController extends Controller
{
    // public function registration(Request $request)
    // {
    //     $validator = Validator::make(
    //         $request->all(),
    //         [
    //             'name' => 'required',
    //             'email' => 'nullable|email',
    //             'phone' => 'required|unique:users',
    //             'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    //         ]
    //     );
    //     // validation error
    //     if ($validator->fails()) {

    //         return response()->json([
    //             'status' => 'error',
    //             'errors' => $validator->errors(),
    //         ], 403);
    //     }
    //     $model = new TempUser();
    //     $model->name = $request->name;

    //     if ($request->has('name_bangla')) {
    //         $model->name_bangla = $request->name_bangla;
    //     }
    //     if ($request->has('id_card_name')) {
    //         $model->id_card_name = $request->id_card_name;
    //     }
    //     if ($request->has('email')) {
    //         $model->email = $request->email;
    //     }
    //     if ($request->has('phone')) {
    //         $model->phone = $request->phone;
    //     }

    //     if ($request->has('secondary_phone')) {
    //         $model->secondary_phone = $request->secondary_phone;
    //     }
    //     if ($request->has('nid')) {
    //         $model->nid = $request->nid;
    //     }
    //     if ($request->has('passport')) {
    //         $model->passport = $request->passport;
    //     }
    //     if ($request->has('present_address')) {
    //         $model->present_address = $request->present_address;
    //     }
    //     if ($request->has('present_district_city')) {
    //         $model->present_district_city = $request->present_district_city;
    //     }
    //     if ($request->has('present_country')) {
    //         $model->present_country = $request->present_country;
    //     }
    //     if ($request->has('parmanent_address')) {
    //         $model->parmanent_address = $request->parmanent_address;
    //     }
    //     if ($request->has('parmanent_district_city')) {
    //         $model->parmanent_district_city = $request->parmanent_district_city;
    //     }
    //     if ($request->has('parmanent_country')) {
    //         $model->parmanent_country = $request->parmanent_country;
    //     }
    //     if ($request->has('dob')) {
    //         $model->dob = $request->dob;
    //     }
    //     if ($request->has('blood_group')) {
    //         $model->blood_group = $request->blood_group;
    //     }
    //     if ($request->has('spouse_name')) {
    //         $model->spouse_name = $request->spouse_name;
    //     }
    //     if ($request->has('spouse_phone')) {
    //         $model->spouse_phone = $request->spouse_phone;
    //     }
    //     if ($request->has('spouse_email')) {
    //         $model->spouse_email = $request->spouse_email;
    //     }

    //     if ($request->has('children_1_name')) {
    //         $model->children_1_name = $request->children_1_name;
    //     }
    //     if ($request->has('children_2_name')) {
    //         $model->children_2_name = $request->children_2_name;
    //     }
    //     if ($request->has('children_3_name')) {
    //         $model->children_3_name = $request->children_3_name;
    //     }
    //     if ($request->has('children_4_name')) {
    //         $model->children_4_name = $request->children_4_name;
    //     }

    //     if ($request->has('school')) {
    //         $model->school = $request->school;
    //     }
    //     if ($request->has('school_district')) {
    //         $model->school_district = $request->school_district;
    //     }
    //     if ($request->has('college')) {
    //         $model->college = $request->college;
    //     }
    //     if ($request->has('college_district')) {
    //         $model->college_district = $request->college_district;
    //     }

    //     if ($request->has('occupation')) {
    //         $model->occupation = $request->occupation;
    //     }
    //     if ($request->has('additional_info_profession')) {
    //         $model->additional_info_profession = $request->additional_info_profession;
    //     }
    //     if ($request->has('office_name')) {
    //         $model->office_name = $request->office_name;
    //     }
    //     if ($request->has('office_location')) {
    //         $model->office_location = $request->office_location;
    //     }

    //     if ($request->has('facebook_id')) {
    //         $model->facebook_id = $request->facebook_id;
    //     }
    //     if ($request->has('instagram_id')) {
    //         $model->instagram_id = $request->instagram_id;
    //     }

    //     if ($request->has('bkash_number')) {
    //         $model->bkash_number = $request->bkash_number;
    //     }

    //     if ($request->hasFile('photo')) {
    //         $photo = $request->file('photo');
    //         $new_name = time() . '.' . $request->photo->getClientOriginalExtension();
    //         $path = '/images/profile/';
    //         $photo->move(public_path($path), $new_name);
    //         $model->photo = url('/') . $path . $new_name;
    //     }

    //     if ($model->save()) {

    //         // otp send
    //         $to = $request->phone;
    //         $token = "101781542231697622143f741cf5b68695656d322bc6ee73884f3";
    //         $otp = random_int(100000, 999999);
    //         $message = $otp;

    //         $url = "http://api.greenweb.com.bd/api.php?json";


    //         $data = array(
    //             'to' => "$to",
    //             'message' => "$message",
    //             'token' => "$token"
    //         );
    //         $ch = curl_init();
    //         curl_setopt($ch, CURLOPT_URL, $url);
    //         curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    //         curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    //         curl_setopt($ch, CURLOPT_ENCODING, '');
    //         curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    //         curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    //         $smsresult = curl_exec($ch);

    //         //Result
    //         // echo $smsresult;

    //         //Error Display
    //         // echo curl_error($ch);

    //         TempUser::where('id', $model->id)->update([
    //             'otp' => $otp,
    //         ]);
    //     }
    //     return response()->json([
    //         'status' => 'ok',
    //         // 'token' => $user_access_token,
    //         'smsresult' => $smsresult,
    //     ], 200);
    // }

    public function registration(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required',
                'email' => 'nullable|email',
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

        if ($request->has('name_bangla')) {
            $model->name_bangla = $request->name_bangla;
        }
        if ($request->has('id_card_name')) {
            $model->id_card_name = $request->id_card_name;
        }
        if ($request->has('email')) {
            $model->email = $request->email;
        }
        if ($request->has('phone')) {
            $model->phone = $request->phone;
            $model->password = Hash::make($request->phone);
        }
        // if ($request->has('password')) {
        //     // $model->phone = $request->phone;
        //     $model->password = Hash::make($request->password);
        // }
        if ($request->has('secondary_phone')) {
            $model->secondary_phone = $request->secondary_phone;
        }
        if ($request->has('nid')) {
            $model->nid = $request->nid;
        }
        if ($request->has('passport')) {
            $model->passport = $request->passport;
        }
        if ($request->has('present_address')) {
            $model->present_address = $request->present_address;
        }
        if ($request->has('present_district_city')) {
            $model->present_district_city = $request->present_district_city;
        }
        if ($request->has('present_country')) {
            $model->present_country = $request->present_country;
        }
        if ($request->has('parmanent_address')) {
            $model->parmanent_address = $request->parmanent_address;
        }
        if ($request->has('parmanent_district_city')) {
            $model->parmanent_district_city = $request->parmanent_district_city;
        }
        if ($request->has('parmanent_country')) {
            $model->parmanent_country = $request->parmanent_country;
        }
        if ($request->has('province_permanent_address')) {
            $model->province_permanent_address = $request->province_permanent_address;
        }
        if ($request->has('province_present_address')) {
            $model->province_present_address = $request->province_present_address;
        }
        if ($request->has('dob')) {
            // $model->dob = Carbon::parse($request->dob)->format('Y-m-d');
            $model->dob = $request->dob;
        }
        if ($request->has('blood_group')) {
            $model->blood_group = $request->blood_group;
        }
        if ($request->has('spouse_name')) {
            $model->spouse_name = $request->spouse_name;
        }
        if ($request->has('spouse_phone')) {
            $model->spouse_phone = $request->spouse_phone;
        }
        if ($request->has('spouse_email')) {
            $model->spouse_email = $request->spouse_email;
        }

        if ($request->has('children_1_name')) {
            $model->children_1_name = $request->children_1_name;
        }
        if ($request->has('children_2_name')) {
            $model->children_2_name = $request->children_2_name;
        }
        if ($request->has('children_3_name')) {
            $model->children_3_name = $request->children_3_name;
        }
        if ($request->has('children_4_name')) {
            $model->children_4_name = $request->children_4_name;
        }

        if ($request->has('school')) {
            $model->school = $request->school;
        }
        if ($request->has('school_district')) {
            $model->school_district = $request->school_district;
        }
        if ($request->has('college')) {
            $model->college = $request->college;
        }
        if ($request->has('college_district')) {
            $model->college_district = $request->college_district;
        }

        if ($request->has('occupation')) {
            $model->occupation = $request->occupation;
        }
        if ($request->has('additional_info_profession')) {
            $model->additional_info_profession = $request->additional_info_profession;
        }
        if ($request->has('office_name')) {
            $model->office_name = $request->office_name;
        }
        if ($request->has('office_location')) {
            $model->office_location = $request->office_location;
        }

        if ($request->has('facebook_id')) {
            $model->facebook_id = $request->facebook_id;
        }
        if ($request->has('instagram_id')) {
            $model->instagram_id = $request->instagram_id;
        }

        if ($request->has('bkash_number')) {
            $model->bkash_number = $request->bkash_number;
        }

        if ($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $new_name = time() . '.' . $request->photo->getClientOriginalExtension();
            $path = '/images/profile/';
            $photo->move(public_path($path), $new_name);
            $model->photo = url('/') . $path . $new_name;
        }

        if ($model->save()) {

            $qr_text = url('/') . '/club-members/' . $model->uuid;
            $qr_name = '/images/qr/' . $model->member_id . '.svg';
            //working
            \QrCode::generate($qr_text, public_path($qr_name));

            User::where('id', $model->id)->update([
                'qr_code' => url('/') . $qr_name,
                'qr_text' => $qr_text,
            ]);

            // otp send
            $to = $request->phone;
            $token = "101781542231697622143f741cf5b68695656d322bc6ee73884f3";
            $otp = random_int(100000, 999999);
            $message = $otp;

            $url = "http://api.greenweb.com.bd/api.php?json";


            $data = array(
                'to' => "$to",
                'message' => "$message",
                'token' => "$token"
            );
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
            curl_setopt($ch, CURLOPT_ENCODING, '');
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $smsresult = curl_exec($ch);

            //Result
            // echo $smsresult;

            //Error Display
            // echo curl_error($ch);

            User::where('id', $model->id)->update([
                'otp' => $otp,
            ]);

            $user_access_token = $model->createToken('club85hfgufwevcxy3523jjhvcx')->plainTextToken;
        }
        return response()->json([
            'status' => 'ok',
            'token' => $user_access_token,
            'otp' => $otp,
            'user_info' => $model,
        ], 200);
    }
    public function login(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'phone' => 'required',
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
        // //check password
        // if (!Hash::check($request->phone, $user->password)) {
        //     return response([
        //         "status" => "error",
        //         'message' => 'Wrong Password..!'
        //     ], 401);
        // }

        // otp send
        $to = $request->phone;
        $token = "101781542231697622143f741cf5b68695656d322bc6ee73884f3";
        $otp = random_int(100000, 999999);
        $message = $otp;

        $url = "http://api.greenweb.com.bd/api.php?json";


        $data = array(
            'to' => "$to",
            'message' => "$message",
            'token' => "$token"
        );
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_ENCODING, '');
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $smsresult = curl_exec($ch);

        //Result
        // echo $smsresult;

        //Error Display
        // echo curl_error($ch);

        User::where('id', $user->id)->update([
            'otp' => $otp,
        ]);

        $user_access_token = $user->createToken('club85hfgufwevcxy3523jjhvcx')->plainTextToken;

        return response()->json([
            'status' => 'ok',
            'token' => $user_access_token,
            'otp' => $otp,
            'user_info' => $user,
        ], 200);
    }

    public function logout()
    {
        $user = Auth::user();
        $user->tokens()->where('id', $user->currentAccessToken()->id)->delete();

        return response()->json([
            "status" => "ok",
            "message" => 'Logout Successful....!'
        ], 200);
    }
}
