<?php

namespace App\Http\Controllers;

use App\Models\EventFee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EventFeeController extends Controller
{
    public function show()
    {
        $data = EventFee::first();
        if ($data) {
            $url = "https://club85.org/bkash/create-payment?amount=" . $data->fee . "&uuid=" . Auth::user()->uuid;
            return response()->json([
                "status" => "ok",
                "event_name" => $data->event_name,
                "event_fee" => $data->fee,
                "payment_url" => $url,

            ], 200);
        }
        return response()->json([
            "status" => "error",
            "message" => "Not Found"
        ], 404);
    }
}
