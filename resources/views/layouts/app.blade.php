<!DOCTYPE html>
@php
    $locale = App::currentLocale()
@endphp

<html lang="{{ $locale === "ar" ? "ar" : "en" }}">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    @yield('meta_tags')

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/x-icon" href="{{URL::to('/');}}/favicon.ico">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/jquery-ui.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i%7CMontserrat:600,800" rel="stylesheet">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="{{URL::to('/');}}/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/fontawesome-5-all.min.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/font-awesome.min.css">

    <!-- LEAFLET MAP -->
    <link rel="stylesheet" href="{{URL::to('/');}}/css/leaflet.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/leaflet-gesture-handling.min.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/leaflet.markercluster.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/leaflet.markercluster.default.css">
    <!-- ARCHIVES CSS -->
    @yield('more_styles')
    <link rel="stylesheet" href="{{URL::to('/');}}/css/search.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/animate.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/aos.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/aos2.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/swiper.min.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/magnific-popup.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/lightcase.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/owl-carousel.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/menu.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/slick.css">
    <link rel="stylesheet" href="{{URL::to('/');}}/css/styles.css">
    <link rel="stylesheet" id="color" href="{{URL::to('/');}}/css/default.css">


    <style>
        #header-container{
            background: #21295b;
        }
        .hp-6 .tab-content > .active {
            margin-top: 0px;
            padding-top: 30px;
        }
    </style>

</head>
<body class="{{ $locale === "ar" ? "rtl" : "" }} h20">
    <!-- Wrapper -->
    <div id="wrapper" class="int_main_wraapper">
        <!-- START SECTION HEADINGS -->
        <!-- Header Container
        ================================================== -->
        <header id="header-container">
            <!-- Header -->
            <div id="header" class="int_content_wraapper hd">
                <div class="container container-header">
                    <!-- Left Side Content -->
                    <div class="left-side" style="display: flex;align-items: flex-end;">
                        <!-- Logo -->
                        <div id="logo">
                            <a href="{{URL::to('/');}}"><img src="{{URL::to('/');}}/storage/{{ setting('site.logo') }}" data-sticky-logo="{{URL::to('/');}}/storage/{{ setting('site.logo') }}" style="width:180px;" alt=""></a>
                        </div>
                        <!-- Mobile Navigation -->
                        <div class="mmenu-trigger">
                            <button class="hamburger hamburger--collapse" type="button">
                                <span class="hamburger-box">
							<span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                        <!-- Main Navigation -->
                        <nav id="navigation" class="style-1 black">
                            <ul id="responsive">
                                
                                {{menu('Main Menu', 'layouts.my_menu');}}
                                    
                            </ul>
                        </nav>
                        <!-- Main Navigation / End -->
                    </div>
                    <!-- Left Side Content / End -->


                    <!-- lang-wrap-->
                    <div class="header-user-menu user-menu add d-none d-lg-none d-xl-flex">
                        <div class="lang-wrap">
                            <div class="show-lang">
                                <span><i class="fas fa-globe-americas"></i>
                                @if ($locale == 'en')
                                <strong>ENG</strong>
                                @else
                                <strong>AR</strong>
                                @endif
                                </span>
                                <i class="fa fa-caret-down arrlan"></i></div>
                            <ul class="lang-tooltip lang-action no-list-style">
                                <li><a href="{{URL::to('/');}}/language/en" class="current-lan" data-lantext="En">English</a></li>
                                <li><a href="{{URL::to('/');}}/language/ar" data-lantext="Ar">Arabic</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- lang-wrap end-->


                    <!-- Right Side Content / End -->
                    <div class="right-side d-none d-none d-lg-none d-xl-flex mr-2">
                        <!-- Header Widget -->
                        <div class="header-widget">
                            <a href="tel:{{ setting('site.hotline') }}" class="button border" style="padding: 10px 0px; text-align:Center">Hotline: {{ setting('site.hotline') }}<i class="fas fa-laptop-house ml-2"></i></a>
                        </div>
                        <!-- Header Widget / End -->
                    </div>
                    <!-- Right Side Content / End -->

                    



                    

                </div>
            </div>
            <!-- Header / End -->

        </header>
        <div class="clearfix"></div>
        <!-- Header Container / End -->

        <!----------Main Content---------->

        @yield('content')

        <!----------End Main Content---------->

        <!--Footer-->
        <!-- START FOOTER -->
<footer class="first-footer">
    <div class="top-footer bg-black-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="netabout">
                        <a href="{{URL::to('/');}}" class="logo">
                            <img src="{{Voyager::image(setting('site.footer_logo'))}}" alt="Agec Logo">
                        </a>
                        <p>{{setting('site.footer_text')}}</p>
                    </div>
                    <div class="contactus">
                        <ul>
                            <li>
                                <div class="info">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <p class="in-p">{{setting('site.sales_office')}}</p>
                                </div>
                            </li>
                            <li>
                                <div class="info">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <p class="in-p"><a href="tel:{{setting('site.hotline')}}" style="color: #fff;text-decoration:none;">{{setting('site.hotline')}}</a></p>
                                </div>
                            </li>
                            <li>
                                <div class="info">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <p class="in-p ti"><a href="mailto:{{setting('site.email')}}" style="color:#fff">{{setting('site.email')}}</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="navigation">
                        <h3>Navigation</h3>
                        <div class="nav-footer">
                            <ul>
                                {{menu('Footer Left Menu', 'layouts.my_menu');}}
                            </ul>
                            <ul class="nav-right">
                                {{menu('Footer Right Menu', 'layouts.my_menu');}}
                            </ul>
                        </div>
                    </div>
                </div>
                {{-- <div class="col-lg-3 col-md-6">
                    <div class="widget">
                        <h3>Twitter Feeds</h3>
                        <div class="twitter-widget contuct">
                            <div class="twitter-area">
                                <div class="single-item">
                                    <div class="icon-holder">
                                        <i class="fa fa-twitter" aria-hidden="true"></i>
                                    </div>
                                    <div class="text">
                                        <h5><a href="#">@findhouses</a> all share them with me baby said inspet.</h5>
                                        <h4>about 5 days ago</h4>
                                    </div>
                                </div>
                                <div class="single-item">
                                    <div class="icon-holder">
                                        <i class="fa fa-twitter" aria-hidden="true"></i>
                                    </div>
                                    <div class="text">
                                        <h5><a href="#">@findhouses</a> all share them with me baby said inspet.</h5>
                                        <h4>about 5 days ago</h4>
                                    </div>
                                </div>
                                <div class="single-item">
                                    <div class="icon-holder">
                                        <i class="fa fa-twitter" aria-hidden="true"></i>
                                    </div>
                                    <div class="text">
                                        <h5><a href="#">@findhouses</a> all share them with me baby said inspet.</h5>
                                        <h4>about 5 days ago</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> --}}
                <div class="col-lg-4 col-md-6">
                    <div class="newsletters">
                        <h3>Newsletters</h3>
                        <p>{{setting('site.newsletters_text')}}</p>
                    </div>
                    <form class="bloq-email mailchimp form-inline" method="post">
                        <label for="subscribeEmail" class="error"></label>
                        <div class="email">
                            <input type="email" id="subscribeEmail" name="EMAIL" placeholder="Enter Your Email">
                            <input type="submit" value="Subscribe" class="mt-0">
                            <p class="subscription-success"></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="second-footer">
        <div class="container">
            <p>{{ now()->year }} © Copyright - All Rights Reserved. Powered By <a href="https://invent.solutions/"><img style="width: 40px;" src="{{URL::to('/');}}/images/inventlogo.svg"/></a></p>
            <ul class="netsocials">
                
                @if (setting('site.facebook_link'))
                <li><a href="{{setting('site.facebook_link')}}"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                @endif

                @if (setting('site.instagram_link'))
                <li><a href="{{setting('site.instagram_link')}}"><i class="fab fa-instagram"></i></a></li>
                @endif

                @if (setting('site.linkedin_link')) 
                <li><a href="{{setting('site.linkedin_link')}}" style="color:#fff"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                @endif
            
            </ul>
        </div>
    </div>
</footer>

<a data-scroll href="#wrapper" class="go-up"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>
<!-- END FOOTER -->

<!-- START PRELOADER -->
<div id="preloader">
    <div id="status">
        <div class="status-mes"></div>
    </div>
</div>
<!-- END PRELOADER -->

<!-- ARCHIVES JS -->
<script src="{{URL::to('/');}}/js/jquery-3.5.1.min.js"></script>
<script src="{{URL::to('/');}}/js/jquery-ui.js"></script>
<script src="{{URL::to('/');}}/js/tether.min.js"></script>
<script src="{{URL::to('/');}}/js/moment.js"></script>
<script src="{{URL::to('/');}}/js/bootstrap.min.js"></script>
<script src="{{URL::to('/');}}/js/mmenu.min.js"></script>
<script src="{{URL::to('/');}}/js/mmenu.js"></script>
<script src="{{URL::to('/');}}/js/aos.js"></script>
<script src="{{URL::to('/');}}/js/aos2.js"></script>
<script src="{{URL::to('/');}}/js/swiper.min.js"></script>
<script src="{{URL::to('/');}}/js/swiper.js"></script>
<script src="{{URL::to('/');}}/js/slick.min.js"></script>
<script src="{{URL::to('/');}}/js/slick2.js"></script>
<script src="{{URL::to('/');}}/js/fitvids.js"></script>
<script src="{{URL::to('/');}}/js/jquery.waypoints.min.js"></script>
<script src="{{URL::to('/');}}/js/jquery.counterup.min.js"></script>
<script src="{{URL::to('/');}}/js/imagesloaded.pkgd.min.js"></script>
<script src="{{URL::to('/');}}/js/isotope.pkgd.min.js"></script>
<script src="{{URL::to('/');}}/js/smooth-scroll.min.js"></script>
<script src="{{URL::to('/');}}/js/forms.js"></script>
<script src="{{URL::to('/');}}/js/lightcase.js"></script>
<script src="{{URL::to('/');}}/js/search.js"></script>
<script src="{{URL::to('/');}}/js/owl.carousel.js"></script>
<script src="{{URL::to('/');}}/js/jquery.magnific-popup.min.js"></script>
<script src="{{URL::to('/');}}/js/ajaxchimp.min.js"></script>
<script src="{{URL::to('/');}}/js/newsletter.js"></script>
<script src="{{URL::to('/');}}/js/jquery.form.js"></script>
<script src="{{URL::to('/');}}/js/jquery.validate.min.js"></script>
<script src="{{URL::to('/');}}/js/searched.js"></script>
<script src="{{URL::to('/');}}/js/forms-2.js"></script>
<script src="{{URL::to('/');}}/js/color-switcher.js"></script>

<!-- Slider Revolution scripts -->
<script src="{{URL::to('/');}}/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="{{URL::to('/');}}/revolution/js/jquery.themepunch.revolution.min.js"></script>

<!-- MAIN JS -->
<script src="{{URL::to('/');}}/js/script.js"></script>

    <!----------More Script---------->
    
    @yield('more_scripts')
    
    <!----------End More Script---------->

</div>
<!-- Wrapper / End -->
</body>


</html>
