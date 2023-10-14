<?php

namespace App\Http\Controllers\AppUser;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PaymentController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'bkash_payment_ref' => 'required',
            ]
        );
        // validation error
        if ($validator->fails()) {

            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 403);
        }

        $model = User::find(Auth::user()->id);
        if ($model) {
            $model->bkash_payment_ref = $request->bkash_payment_ref;
            $model->save();
            return response()->json([
                'status' => 'ok',
                'message' => "Send Successful.",
            ], 200);
        }
        return response()->json([
            'status' => 'error',
            'message' => "Not Found",
        ], 404);
    }
}
