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
            height: 3.88in;
            width: 2.63in;
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
            height: 3.88in;
            width: 2.63in;
            padding: 10px;
            margin: 0 auto;
        }

        .img-wrapper {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 1px solid gray;
            margin: 0 auto;
            overflow: hidden;
            margin-bottom: 10px;
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
            margin-bottom: 5px;
        }

        .qr-warpper {
            width: 100px;
            height: 100px;
            margin: 0 auto;
            margin-top: 80px;
        }
    </style>
</head>

<body id="main_body">
    <page>
        <div id="id_card">
            <div class="img-wrapper">
                <img src="{{asset('images/profile/1697283509.png')}}" alt="">
            </div>
            <h2 class="name">AleX SaM</h2>
            <h3 class="id-no">G85-0001</h3>
            <p class="school">Gabtali Pilot High School</p>
            <div class="qr-warpper">
                <img src="{{asset('images/qr.png')}}" alt="" height="100px" width="100px">
            </div>
        </div>
    </page>
<img src="{{ asset('/images/qrcode.svg') }}" alt="" title="" />
</body>

</html>