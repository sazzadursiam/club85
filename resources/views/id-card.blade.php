<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Member Info of {{$user->name}}</title>
    <style>

    </style>
</head>

<body>
    <div class="container py-2 py-lg-5">
        <div class="row">
            <div class="col-md-6 col-lg-4 mx-auto">
                <div style="background:#eaeaea;min-height: 60px;display: flex;align-items: center;justify-content: center;box-shadow: -2px 0px 8px -5px rgba(0,0,0,0.69);
-webkit-box-shadow: -2px 0px 8px -5px rgba(0,0,0,0.69);
-moz-box-shadow: -2px 0px 8px -5px rgba(0,0,0,0.69);">
                    <h1>{{$user->name}}</h1>
                </div>
                <div class="row py-3">
                    <div class="col-6">
                        <img src="{{ $user->photo }}" alt="" class="img-fluid">
                    </div>
                    <div class="col-6">
                        <h3>CLUB85</h3>
                        <h5>{{$user->occupation}}</h5>
                        <p>
                        <address style="font-size:13px">
                            {{$user->present_address}}
                        </address>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mb-3">
                        <div style="background:#eaeaea;min-height: 40px;display: flex;align-items: center;padding: 0 20px;box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);
-webkit-box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);
-moz-box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);">
                            <p class="mb-0">
                                <i class="fa-solid fa-phone me-2"></i>{{$user->phone}}
                            </p>
                        </div>
                    </div>
                    <div class="col-12 mb-3">
                        <div style="background:#eaeaea;min-height: 40px;display: flex;align-items: center;padding: 0 20px;box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);
-webkit-box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);
-moz-box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);">
                            <p class="mb-0">
                                <i class="fa-solid fa-mobile-retro me-2"></i>{{$user->secondary_phone}}
                            </p>
                        </div>
                    </div>
                    <div class="col-12 mb-3">
                        <div style="background:#eaeaea;min-height: 40px;display: flex;align-items: center;padding: 0 20px;box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);
-webkit-box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);
-moz-box-shadow: -5px 2px 8px -2px rgba(0,0,0,0.7);">
                            <p class="mb-0">
                                <i class="fa-solid fa-envelope me-2"></i>{{$user->email}}
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>