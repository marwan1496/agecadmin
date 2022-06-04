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
    .custom_h2:after{
        margin-right: auto;
    margin-left: auto;
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
                            <h2 class="text-left mb-4">The <span>{{$pageComponents[0]->title}}</span></h2>
                        </div>
                        <div class="pftext">
                            <p>{!! $pageComponents[0]->content !!}</p>
                        
                        </div>
                        {{-- <div class="box bg-2">
                            <a href="about.html" class="text-center button button--moema button--text-thick button--text-upper button--size-s">read More</a>
                            <img src="images/signature.png" class="ml-5" alt="">
                        </div> --}}
                    </div>
                    <div class="col-lg-6 col-md-12 col-xs-12">
                        <div id="listingDetailsSlider" class="carousel listing-details-sliders slide">
                            <div class="carousel-inner">
                                @foreach ($chairmanArray as $key=>$sliderImage )

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

                                @foreach ( $chairmanArray as $key=>$sliderImage )
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
                <div class="text-center">
                        <h2 class="custom_h2"><span>{{$pageComponents[1]->title}}</span></h2>
                        <p>{!! $pageComponents[1]->content !!}</p>
                </div>
            </div>
        </section>
        <!-- END SECTION ABOUT -->









        
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