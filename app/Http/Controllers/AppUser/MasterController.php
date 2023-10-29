<?php

namespace App\Http\Controllers\AppUser;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Dompdf\Dompdf;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class MasterController extends Controller
{
    public function index()
    {
        $info = User::where('id', Auth::user()->id)->first();
        $card_name = $info->id_card_name;
        $qr_code = $info->qr_code;
        $school = $info->school;
        $member_id = $info->member_id;
        $pphoto = $info->photo;

        // return $pphoto;

        $html = <<<HTML
                    <!DOCTYPE html>
                        <html lang="en">

                        <head>
                            <meta charset="UTF-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1.0">
                            <meta http-equiv="X-UA-Compatible" content="ie=edge">
                            <title>Document</title>
                            <style>
                                body {
                                    width: 100%;
                                    margin: 0 auto;
                                }

                                page {
                                    background: white;
                                    display: block;
                                    margin: 0 auto;
                                    margin-bottom: 0.5cm;
                                    
                                }

                                @page {
                                    size: 2.63in 3.88in;
                                }

                                @media print {

                                    body,
                                    page {
                                        margin: 0;
                                        box-shadow: 0;
                                        -webkit-print-color-adjust: exact;
                                    }
                                }

                                #id_card {
                                    margin: 0 auto;
                                }

                                .img-wrapper {
                                    width: 80px;
                                    height: 80px;
                                    border-radius: 50%;
                                    border: 1px solid gray;
                                    margin: 0 auto;
                                    overflow: hidden;
                                }

                                .img-wrapper img {
                                    
                                    height: 100%;
                                    width: 100%;
                                    object-fit: cover;
                                }

                                .name,
                                .school,
                                .id-no {
                                    text-align: center;
                                    margin-top: 0;
                                    margin-bottom: 3px;
                                }

                                .qr-warpper {
                                    width: 70px;
                                    height: 70px;
                                    margin: 0 auto;
                                    /* margin-top: 5px !important; */
                                }
                            </style>
                        </head>

                        <body id="main_body">
                            <page>
                                <div id="id_card">
                                    <h3 class="id-no" style="font-size:14px">CLUB85</h3>
                                    <div class="img-wrapper">
                                        <img src="{$pphoto}" alt="">
                                    </div>
                                    <h2 class="name" style="font-size:16px;margin-top:5px;">{$card_name}</h2>
                                    <!-- <h3 class="id-no" style="font-size:14px">{$member_id}</h3> -->
                                    <p class="school" style="font-size:11px">{$school}</p>
                                    <div class="qr-warpper" style="margin-top:20px">
                                        <img src="{$qr_code}" alt="" height="70px" width="70px">
                                    </div>
                                </div>
                            </page>

                        </body>

                    </html>
                HTML;

        $filename = $info->member_id . "-" . time() . ".pdf";
        $path = "pdf/" . $filename;
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($html)->save($path);

        $info->id_card_file = url('/') . "/" . $path;
        $info->save();
        $res_data = User::where('id', Auth::user()->id)->first();
        return response()->json([
            'status' => 'ok',
            'id_card_file' =>  $res_data->id_card_file,
            'payment_status' =>  $res_data->payment_status,
        ], 200);
    }

    public function showInfo($uuid)
    {
        $user = User::where('uuid', $uuid)->first();
        if ($user) {
            return view('id-card', compact('user'));
        }
        abort(404);
    }
}
