<?php

namespace App\Http\Controllers\AppUser;

use App\Http\Controllers\Controller;
use App\Models\Payment;
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
                'payment_amount' => 'required|numeric',
            ]
        );
        // validation error
        if ($validator->fails()) {

            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 403);
        }

        // $model = Payment::where('user_id', Auth::user()->id);
        $model = new Payment();
        // if ($model) {
        $model->user_id = Auth::user()->id;
        $model->bkash_payment_ref = $request->bkash_payment_ref;
        $model->payment_amount = $request->payment_amount;
        $model->save();
        return response()->json([
            'status' => 'ok',
            'message' => "Send Successful.",
        ], 200);
        // }
        return response()->json([
            'status' => 'error',
            'message' => "Not Found",
        ], 404);
    }
}
