@extends('layouts.app')

@section('meta_tags')
<meta name="description" content="{{$page[0]->meta_description}}">
<meta name="keywords" content="{{$page[0]->meta_keywords}}">
<title>{{setting('site.title')}} - {{$page[0]->meta_title}}</title>
@endsection

@section('more_styles')
<style>
    .how-it-works .serv-flex {
        min-height: 370px;
    }
    .how-it-works .serv-flex{
        color: #21295b !important;
    }
</style>
@endsection

@section('content')
        <!-- START SECTION ABOUT -->
        <section class="about-us fh">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12 who-1">
                        <div>
                            <h2 class="text-left mb-4">About <span>{{$pageComponents[0]->content}}</span></h2>
                        </div>
                        <div class="pftext">
                            <p>{!! $pageComponents[1]->content !!}</p>
                        
                            <p>{!! $pageComponents[2]->content !!}</p>
                        </div>
                        {{-- <div class="box bg-2">
                            <a href="about.html" class="text-center button button--moema button--text-thick button--text-upper button--size-s">read More</a>
                            <img src="images/signature.png" class="ml-5" alt="">
                        </div> --}}
                    </div>
                    <div class="col-lg-6 col-md-12 col-xs-12">
                        <div id="listingDetailsSlider" class="carousel listing-details-sliders slide">
                            <div class="carousel-inner">
                                @foreach ($aboutSliderArray as $key=>$sliderImage )

                                    @if($key == 0)
                                        <div class="active item carousel-item" data-slide-number="{{$key}}">
                                            <img src="{{Voyager::image($sliderImage)}}" class="img-fluid" alt="slider-listing">
                                        </div>
                                    @else
                                        <div class="item carousel-item" data-slide-number="{{$key}}">
                                            <img src="{{Voyager::image($sliderImage)}}" class="img-fluid" alt="slider-listing">
                                        </div>
                                    @endif      
                                @endforeach

                                <a class="carousel-control left" href="#listingDetailsSlider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                                <a class="carousel-control right" href="#listingDetailsSlider" data-slide="next"><i class="fa fa-angle-right"></i></a>

                            </div>
                            <!-- main slider carousel nav controls -->
                            <ul class="carousel-indicators smail-listing list-inline">

                                @foreach ( $aboutSliderArray as $key=>$sliderImage )
                                    @if ($key == 0)
                                        <li class="list-inline-item active">
                                            <a id="carousel-selector-{{$key}}" class="selected" data-slide-to="{{$key}}" data-target="#listingDetailsSlider">
                                                <img src="{{Voyager::image($sliderImage)}}" class="img-fluid" alt="listing-small">
                                            </a>
                                        </li>
                                    @else
                                        <li class="list-inline-item">
                                            <a id="carousel-selector-{{$key}}" class="selected" data-slide-to="{{$key}}" data-target="#listingDetailsSlider">
                                                <img src="{{Voyager::image($sliderImage)}}" class="img-fluid" alt="listing-small">
                                            </a>
                                        </li> 
                                    @endif
                                @endforeach
                                
                            </ul>
                            <!-- main slider carousel items -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END SECTION ABOUT -->

        <!-- START SECTION WHY CHOOSE US -->
        <section class="how-it-works bg-white-2">
            <div class="container">
                <div class="sec-title">
                    <h2><span>Our </span>Mission</h2>
                    {{-- <p>We provide full service at every step.</p> --}}
                </div>
                <div class="row service-1">
                    <article class="col-lg-6 col-md-6 col-xs-12 serv" data-aos="fade-up">
                        <div class="serv-flex">
                            <div class="art-1 img-13">
                                <i class="fa fa-trophy" aria-hidden="true"></i>
                                <h3>{{$pageComponents[3]->title}}</h3>
                            </div>
                            <div class="service-text-p">
                                <p class="text-left">
                                    {!! $pageComponents[3]->content !!}</p>
                            </div>
                        </div>
                    </article>

                    <article class="col-lg-6 col-md-6 col-xs-12 serv" data-aos="fade-up">
                        <div class="serv-flex">
                            <div class="art-1 img-13">
                                <i class="fas fa-award"></i>
                                <h3>{{$pageComponents[4]->title}}</h3>
                            </div>
                            <div class="service-text-p">
                                <p class="text-left">
                                    {!! $pageComponents[4]->content !!}</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <!-- END SECTION WHY CHOOSE US -->

        <!-- START SECTION COUNTER UP -->
        <section class="counterup">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <div class="countr">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            <div class="count-me">
                                <p class="counter text-left">300</p>
                                <h3>Sold Houses</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <div class="countr">
                            <i class="fa fa-list" aria-hidden="true"></i>
                            <div class="count-me">
                                <p class="counter text-left">400</p>
                                <h3>Daily Listings</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <div class="countr mb-0">
                            <i class="fa fa-users" aria-hidden="true"></i>
                            <div class="count-me">
                                <p class="counter text-left">250</p>
                                <h3>Expert Agents</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <div class="countr mb-0 last">
                            <i class="fa fa-trophy" aria-hidden="true"></i>
                            <div class="count-me">
                                <p class="counter text-left">200</p>
                                <h3>Won Awars</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END SECTION COUNTER UP -->

        <!-- START SECTION WHY CHOOSE US -->
        <section class="how-it-works bg-white-2">
            <div class="container">
                <div class="sec-title">
                    <h2><span>Our </span>Vision</h2>
                    {{-- <p>We provide full service at every step.</p> --}}
                </div>
                <div class="row service-1">
                    <article class="col-lg-6 col-md-6 col-xs-12 serv" data-aos="fade-up">
                        <div class="serv-flex">
                            <div class="art-1 img-13">
                                <i class="fa fa-trophy" aria-hidden="true"></i>
                                <h3>{{$pageComponents[5]->title}}</h3>
                            </div>
                            <div class="service-text-p">
                                <p class="text-left">
                                    {!! $pageComponents[5]->content !!}</p>
                            </div>
                        </div>
                    </article>

                    <article class="col-lg-6 col-md-6 col-xs-12 serv" data-aos="fade-up">
                        <div class="serv-flex">
                            <div class="art-1 img-13">
                                <i class="fas fa-award"></i>
                                <h3>{{$pageComponents[6]->title}}</h3>
                            </div>
                            <div class="service-text-p">
                                <p class="text-left">
                                    {!! $pageComponents[6]->content !!}</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <!-- END SECTION WHY CHOOSE US -->






        
    </div>
    <!-- Wrapper / End -->



@endsection

@section('more_scripts')

<script>
    document.body.classList.add(
      'inner-pages',
      'hd-white',
      'about'
    );
</script>
<script>
    $('.style1').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: false,
        autoplayTimeout: 5000,
        responsive: {
            0: {
                items: 1
            },
            400: {
                items: 1,
                margin: 20
            },
            500: {
                items: 1,
                margin: 20
            },
            768: {
                items: 1,
                margin: 20
            },
            991: {
                items: 1,
                margin: 20
            },
            1000: {
                items: 1,
                margin: 20
            }
        }
    });

</script>
<script>
    $('.style2').owlCarousel({
        loop: true,
        margin: 0,
        dots: false,
        autoWidth: false,
        autoplay: true,
        autoplayTimeout: 5000,
        responsive: {
            0: {
                items: 2,
                margin: 20
            },
            400: {
                items: 2,
                margin: 20
            },
            500: {
                items: 3,
                margin: 20
            },
            768: {
                items: 4,
                margin: 20
            },
            992: {
                items: 5,
                margin: 20
            },
            1000: {
                items: 6,
                margin: 20
            }
        }
    });

</script>

@endsection