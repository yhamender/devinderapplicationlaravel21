<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{ Setting::get('site_title','Open Delivery') }}</title>

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" type="image/png" href="{{ Setting::get('site_icon') }}"/>

    <link href="{{asset('asset/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('asset/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('asset/css/style.css')}}" rel="stylesheet">
</head>
<body>
<div id="wrapper">
    <div class="overlay" id="overlayer" data-toggle="offcanvas"></div>

    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li>
            </li>
            <li class="full-white">
                <a href="{{ url('/register') }}">Customer Sign up</a>
            </li>
            <li class="white-border">
                <a href="{{ url('/provider/login') }}">BECOME A DRIVER</a>
            </li>
            <li>
                <a href="{{ url('/ride') }}">Drive</a>
            </li>
            <li>
                <a href="{{ url('/drive') }}">Drive</a>
            </li>
            <li>
                <a href="#">Help</a>
            </li>
            <li>
                <a href="#">Privacy Policy</a>
            </li>
            <li>
                <a href="#">Terms and Conditions</a>
            </li>
            <li>
                <a href="{{ Setting::get('store_link_ios','#') }}"><img src="{{ asset('/asset/img/appstore-white.png') }}"></a>
            </li>
            <li>
                <a href="{{ Setting::get('store_link_android','#') }}"><img src="{{ asset('/asset/img/playstore-white.png') }}"></a>
            </li>
        </ul>
    </nav>

    <div id="page-content-wrapper">
        <header>
            <nav class="navbar navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                            <span class="hamb-top"></span>
                            <span class="hamb-middle"></span>
                            <span class="hamb-bottom"></span>
                        </button>

                        <a class="navbar-brand" href="{{url('/')}}"><img src="example/PPCABS.png"></a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li @if(Request::url() == url('/ride')) class="active" @endif>
                                <a href="{{url('/ride')}}">Customer</a>
                            </li>
                            <li @if(Request::url() == url('/drive')) class="active" @endif>
                                <a href="{{url('/drive')}}">Driver</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Help</a></li>
                            <li><a href="{{url('/login')}}">Signin</a></li>
                            <li><a class="menu-btn" href="{{url('/drive')}}">Become a Driver</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <div class="banner row no-margin" style="background-image: url('{{ asset('asset/img/Sydney_banner.jpg') }}');">
            <div class="banner-overlay"></div>
            <div class="container">
                <div class="col-md-8">
                    <h2 class="banner-head"><span class="strong">Get there</span><br>Your day belongs to you</h2>
                </div>
                <div class="col-md-4">
                    <div class="banner-form">
                        <div class="row no-margin fields">
                            <div class="left">
                                <img src="{{ asset('asset/img/ride-form-icon.png') }}">
                            </div>
                            <div class="right">
                                <a href="https://play.google.com/store/apps/details?id=com.ppcabs.customer&hl=en_IN">
                                    <h3>Customer Sign up</h3>
                                    <h5>SIGN UP <i class="fa fa-chevron-right"></i></h5>
                                </a>
                            </div>
                        </div>
                        <div class="row no-margin fields">
                            <div class="left">
                                <img src="{{ asset('asset/img/ride-form-icon.png') }}">
                            </div>
                            <div class="right">
                                <a href="https://play.google.com/store/apps/details?id=com.ppcabs.driver&hl=en_IN">
                                    <h3>Driver Sign up</h3>
                                    <h5>SIGN UP <i class="fa fa-chevron-right"></i></h5>
                                </a>
                            </div>
                        </div>
                        <p class="note-or">Or <a href="{{ url('/provider/login') }}">sign in</a> with your account.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row white-section no-margin">
            <div class="container">
                <div class="col-md-6 img-block text-center">
                    <img src="{{ asset('asset/img/taxiu-5.jpg') }}">
                </div>
                <div class="col-md-6 content-block">
                    <h2>Tap the app, get a taxi</h2>
                    <div class="title-divider"></div>
                    <p>{{ Setting::get('site_title', 'Tranxit')  }} is the smartest way to get around. One tap and a taxi comes directly to you. Your driver knows exactly where to go. And you can pay with either cash or card.</p>
                    <a class="content-more" href="#">MORE REASONS TO BOOK PPCABS TAXI<i class="fa fa-chevron-right"></i></a>
                </div>
            </div>
        </div>

        <div class="row gray-section no-margin">
            <div class="container">
                <div class="col-md-6 content-block">
                    <h2>Ready anywhere, anytime</h2>
                    <div class="title-divider"></div>
                    <p>Daily commute. Errand across town. Early morning flight. Late night drinks. Wherever you’re headed, count on {{ Setting::get('site_title', 'Tranxit') }} for a taxi—no reservations needed.</p>
                    <a class="content-more" href="#">MORE REASONS TO BOOK PPCABS TAXI<i class="fa fa-chevron-right"></i></a>
                </div>
                <div class="col-md-6 img-block text-center">
                    <img src="{{ asset('asset/img/taxiu-10.jpg') }}">
                </div>
            </div>
        </div>

        <div class="row white-section no-margin">
            <div class="container">
                <div class="col-md-6 img-block text-center">
                    <img src="{{ asset('asset/img/taxiu-7.jpg') }}">
                </div>
                <div class="col-md-6 content-block">
                    <h2>Low-cost to luxury</h2>
                    <div class="title-divider"></div>
                    <p>You can always request everyday taxi at everyday prices. But sometimes you need a bit more space. Or you want to go big on style. With {{ Setting::get('site_title', 'Tranxit') }}, the choice is yours.</p>
                    <a class="content-more" href="#">MORE REASONS TO BOOK PPCABS TAXI<i class="fa fa-chevron-right"></i></a>
                </div>
            </div>
        </div>

        <div class="row gray-section no-margin full-section">
            <div class="container">
                <div class="col-md-6 content-block">
                    <h3>Behind the Wheel</h3>
                    <h2>They’re people like you, going your way</h2>
                    <div class="title-divider"></div>
                    <p>What makes the {{ Setting::get('site_title', 'Tranxit') }} experience truly great are the people behind the wheel. They are mothers and fathers. Students and teachers. Veterans. Neighbors. Friends. Our partners drive their own taxi—on their own schedule—in cities big and small. Which is why more than one million people worldwide have signed up to drive.</p>
                    <a class="content-more-btn" href="#">WHY DRIVE WITH {{ Setting::get('site_title', 'Tranxit')  }} <i class="fa fa-chevron-right"></i></a>
                </div>
                <div class="col-md-6 full-img text-center" style="background-image: url({{ asset('asset/img/taxiu-6.jpg') }});">
                    <!-- <img src="img/anywhere.png"> -->
                </div>
            </div>
        </div>

        <div class="row white-section no-margin">
            <div class="container">
                <div class="col-md-6 img-block text-center">
                    <img src="{{ asset('asset/img/taxiu-4.jpg') }}">
                </div>
                <div class="col-md-6 content-block">
                    <h2>Helping Cities For the good of all</h2>
                    <div class="title-divider"></div>
                    <p>A city with {{ Setting::get('site_title', 'Tranxit') }} has more economic opportunities for residents, fewer drunk drivers on the streets, and better access to transportation for those without it.</p>
                    <a class="content-more" href="#">OUR LOCAL IMPACT <i class="fa fa-chevron-right"></i></a>
                </div>
            </div>
        </div>

        <div class="row gray-section no-margin">
            <div class="container">
                <div class="col-md-6 content-block">
                    <h2>Safety Putting people first</h2>
                    <div class="title-divider"></div>
                    <p>Whether riding in the backseat or driving up front, every part of the {{ Setting::get('site_title', 'Tranxit') }} experience has been designed around your safety and security.</p>
                    <a class="content-more" href="#">HOW WE KEEP YOU SAFE <i class="fa fa-chevron-right"></i></a>
                </div>
                <div class="col-md-6 img-block text-center">
                    <img src="{{ asset('asset/img/taxiu-9.jpg') }}">
                </div>
            </div>
        </div>

        <div class="row find-city no-margin">
            <div class="container">
                <h2>{{ Setting::get('site_title','Tranxit') }} is in Melbourne</h2>
                <form>
                    <div class="input-group find-form">
                        <input type="text" class="form-control" placeholder="Search" >
                        <span class="input-group-addon">
                    <button type="submit">
                        <i class="fa fa-arrow-right"></i>
                    </button>
                </span>
                    </div>
                </form>
            </div>
        </div>

        <div class="footer-city row no-margin" style="background-image: url({{ asset('asset/img/melbourne-2.png') }});"></div>
        <div class="page-content">
            <div class="footer row no-margin">
                <div class="container">
                    <div class="footer-logo row no-margin">
                        <div class="logo-img">
                            <img src="example/PPCABS.png">
                        </div>
                    </div>
                    <div class="row no-margin">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <ul>
                                <li><a href="#">PPCabs Customer</a></li>
                                <li><a href="#">PPCabs driver</a></li>
                                <li><a href="#">PPCabs in Melbourne</a></li>
                                <li><a href="#">Online Bookings</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <ul>
                                <li><a href="https://play.google.com/store/apps/details?id=com.ppcabs.customer&hl=en_IN">Customer Sign up</a></li>
                                <li><a href="https://play.google.com/store/apps/details?id=com.ppcabs.driver&hl=en_IN">Become a Driver</a></li>
                                <li><a href="https://play.google.com/store/apps/details?id=com.ppcabs.customer&hl=en_IN">Book Now</a></li>
                            </ul>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <h5>Get App on</h5>
                            <ul class="app">
                                <li>
                                    <a href="{{Setting::get('store_link_ios','#')}}">
                                        <img src="{{asset('asset/img/appstore.png')}}">
                                    </a>
                                </li>
                                <li>
                                    <a href="{{Setting::get('store_link_android','https://play.google.com/store/apps/details?id=com.ppcabs.customer')}}">
                                        <img src="{{asset('asset/img/playstore.png')}}">
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <h5>Connect us</h5>
                            <ul class="social">
                    <li><a href="https://www.instagram.com/ppcabs/" target="_blank"><i class="fa fa-instagram" style="border: 2px solid gray; padding: 10px; font-size:30px;"></i></a></li>

                    <li><a href="https://www.google.com/search?q=PPCABS+Taxi+Service&ludocid=2115795670520845103" target="_blank" style="border: 2px solid gray; padding: 10px; font-size:30px;"><i class="fa fa-google"></i></a></li>

                    <li><a href="https://m.facebook.com/ppcabstaxiservice/" target="_blank" style="border: 2px solid gray; padding: 10px; font-size:30px;"><i class="fa fa-facebook"></i></a> </li> 

                    <li><a href="https://mobile.twitter.com/CabsPp" target="_blank" style="border: 2px solid gray; padding: 10px; font-size:30px;"><i class="fa fa-twitter"></i></a> </li>
                            </ul>
                        </div>
                    </div>

                    <div class="row no-margin">
                        <div class="col-md-12 copy">
                            <p>{{ Setting::get('site_copyright', '&copy; '.date('Y').' Open Delivery') }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="{{asset('asset/js/jquery.min.js')}}"></script>
<script src="{{asset('asset/js/bootstrap.min.js')}}"></script>
<script src="{{asset('asset/js/scripts.js')}}"></script>
</body>
</html>
