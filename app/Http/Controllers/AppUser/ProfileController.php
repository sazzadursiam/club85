<?php

namespace App\Http\Controllers\AppUser;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $profile = User::with(['payments'])->find(Auth::user()->id);
        $profile_info = (object) [
            'id' => $profile->id,
            'uuid' => $profile->uuid,
            'member_id' => $profile->member_id,
            'name' => $profile->name ?? "",
            'name_bangla' => $profile->name_bangla ?? "",
            'id_card_name' => $profile->id_card_name ?? "",
            'email' => $profile->email ?? "",
            'phone' => $profile->phone ?? "",
            'secondary_phone' => $profile->secondary_phone ?? "",
            'nid' => $profile->nid ?? "",
            'passport' => $profile->passport ?? "",
            'present_address' => $profile->present_address ?? "",
            'present_district_city' => $profile->present_district_city ?? "",
            'present_country' => $profile->present_country ?? "",
            'parmanent_address' => $profile->parmanent_address ?? "",
            'parmanent_district_city' => $profile->parmanent_district_city ?? "",
            'parmanent_country' => $profile->parmanent_country ?? "",
            'province_present_address' => $profile->province_present_address ?? "",
            'dob' => $profile->dob ?? "",
            'blood_group' => $profile->blood_group ?? "",
            'spouse_name' => $profile->spouse_name ?? "",
            'spouse_phone' => $profile->spouse_phone ?? "",
            'spouse_email' => $profile->spouse_email ?? "",
            'children_1_name' => $profile->children_1_name ?? "",
            'children_2_name' => $profile->children_2_name ?? "",
            'children_3_name' => $profile->children_3_name ?? "",
            'children_4_name' => $profile->children_4_name ?? "",
            'school' => $profile->school ?? "",
            'school_district' => $profile->school_district ?? "",
            'college' => $profile->college ?? "",
            'college_district' => $profile->college_district ?? "",
            'occupation' => $profile->occupation ?? "",
            'additional_info_profession' => $profile->additional_info_profession ?? "",
            'office_name' => $profile->office_name ?? "",
            'office_location' => $profile->office_location ?? "",
            'facebook_id' => $profile->facebook_id ?? "",
            'instagram_id' => $profile->instagram_id ?? "",
            'bkash_number' => $profile->bkash_number ?? "",
            'photo' => $profile->photo ?? "",
            'qr_code' => $profile->qr_code ?? "",
            'qr_text' => $profile->qr_text ?? "",
            'id_card_file' => $profile->id_card_file ?? "",
            'user_type' => $profile->user_type ?? "",
            'otp' => $profile->otp ?? "",
            'created_at' => $profile->created_at ?? "",
            'updated_at' => $profile->updated_at ?? "",
        ];

        // "payments": []


        if ($profile_info) {
            return response()->json([
                'status' => 'ok',
                'profile_info' => $profile_info
            ], 200);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Not Found.'
        ], 404);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $model = User::find(Auth::user()->id);
        if ($model) {

            $validator = Validator::make(
                $request->all(),
                [
                    'email' => 'nullable|email',
                    'phone' => 'nullable|unique:users,id,' . Auth::user()->id,
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
            if ($request->has('name')) {
                $model->name = $request->name;
            }
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
                // $model->password = Hash::make($request->phone);
            }
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
                //remove old image form folder if new image comes
                if (
                    $model->photo != null || $model->photo != ""
                ) {
                    $image_file = $model->photo;
                    if (file_exists($image_file)) {
                        unlink($image_file);
                    }
                }
                $photo = $request->file('photo');
                $new_name = time() . '.' . $request->photo->getClientOriginalExtension();
                $path = '/images/profile/';
                $photo->move(public_path($path), $new_name);
                $model->photo = url('/') . $path . $new_name;
            }
            $model->save();


            return response()->json([
                'status' => 'ok',
                'message' => 'Update Successful.'
            ], 200);
        }
        return response()->json([
            'status' => 'error',
            'message' => 'Not Found.'
        ], 404);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
