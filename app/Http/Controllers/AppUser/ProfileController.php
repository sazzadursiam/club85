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
        $profile_info = User::find(Auth::user()->id);
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
                    'email' => 'nullable|email|unique:users,id,' . Auth::user()->id,
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
                    $image_file = public_path($model->photo);
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
