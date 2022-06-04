@extends('layouts.app')

@section('content')
<style>
    /* .property .popup-youtube{
        top: auto;
        bottom: 25%;
    } */
    /* .property.wprt-image-video .iq-waves{
        top: auto;
        bottom: 17.5%;
    } */
    .inner-pages .blog .wprt-image-video.w50{
        position: relative;
    }
    .accordion>.card>.card-header, .accordion>.card {
    background: transparent;
    border-color: #b68e2c !important;
    color: #000;
}
.accordion>.card>.card-header h2 button{
    color: #b68e2c
}
    /* @media(max-width:600px){
        .property .popup-youtube {
        top: auto !important;
        bottom: 15% !important;
        }
    .property.wprt-image-video .iq-waves{
        top: auto !important;
        bottom: 7.5% !important;
    }
    } */
</style>
    <!-- Wrapper -->
    <div id="wrapper">

        <!-- START SECTION PROPERTIES LISTING -->
        <section class="single-proper blog details">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-12 blog-pots">
                        <div class="row">
                            <div class="col-md-12">
                                <section class="headings-2 pt-0">
                                    <div class="pro-wrapper">
                                        <div class="detail-wrapper-body">
                                            <div class="listing-title-bar">
                                                <h3>{{ $project[0]->title }}</h3>
                                                <div class="mt-0">
                                                    <a href="#listing-location" class="listing-address">
                                                        <i class="fa fa-map-marker pr-2 ti-location-pin mrg-r-5"></i>77 - Central Park South, NYC
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        {{-- <div class="single detail-wrapper mr-2">
                                            <div class="detail-wrapper-body">
                                                <div class="listing-title-bar">
                                                    <h4>$ 230,000</h4>
                                                    <div class="mt-0">
                                                        <a href="#listing-location" class="listing-address">
                                                            <p>$ 1,200 / sq ft</p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> --}}
                                    </div>
                                </section>
                                <!-- main slider carousel items -->
                                <div id="listingDetailsSlider" class="carousel listing-details-sliders slide mb-30">
                                    <h5 class="mb-4">Gallery</h5>
                                    <div class="carousel-inner">
                                        @foreach ($sliderImagesArray as $key=>$sliderImage )

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

                                        @foreach ( $sliderImagesArray as $key=>$sliderImage )
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
                                <div class="blog-info details mb-30">
                                    <h5 class="mb-4">Description</h5>
                                    <p class="mb-3">
                                        {!!$project[0]->small_description!!}</p>
                                </div>
                            </div>
                        </div>
                        <div class="single homes-content details mb-30">
                            <!-- title -->
                            <h5 class="mb-4">{{$project[0]->section_one_title}}</h5>
                            <p>{{$project[0]->section_one_description}}</p>
                            <!-- cars List -->
                            <ul class="homes-list clearfix">
                                
                                @foreach ($section_one_features_list as $section_one_feature)
                                <li style="width: 50%;">
                                    <i class="fa fa-check-square" aria-hidden="true"></i>
                                    <span>{{$section_one_feature}}</span>
                                </li>
                                @endforeach
                                
                                
                            </ul>
                            
                            <!-- title -->
                            <h5 class="mt-5">{{$project[0]->section_two_title}}</h5>
                            <p>{{$project[0]->section_two_description}}</p>
                            <ul class="homes-list clearfix">

                                @foreach ($section_two_features_list as $section_two_feature)
                                <li style="width:50%">
                                    <span class="font-weight-bold mr-1">{{$section_two_feature}}</span>
                                </li>
                                @endforeach
                                
                            </ul>
                            
                        </div>
                        <div class="floor-plan property wprt-image-video w50 pro">
                            <h5>{{$project[0]->section_three_title}}</h5>
                            <p>{{$project[0]->section_three_sub_title}}</p>
                            <img alt="image" src="{{Voyager::image($project[0]->image_one_link)}}">
                        </div>

                        <div class="property wprt-image-video w50 pro">
                            <h5>Property Video</h5>
                            <img alt="image" src="{{Voyager::image($project[0]->image_one_link)}}">
                            <a class="icon-wrap popup-video popup-youtube" href="{{$project[0]->video_link}}">
                                <i class="fa fa-play"></i>
                            </a>
                            <div class="iq-waves">
                                <div class="waves wave-1"></div>
                                <div class="waves wave-2"></div>
                                <div class="waves wave-3"></div>
                            </div>
                        </div>

                        <div class="floor-plan property wprt-image-video w50 pro">
                            <h5>{{$project[0]->project_types_title}}</h5>
                            <div class="accordion" id="accordionExample">

                                @foreach ($projects_types as $key=>$projects_type)
                                    
                                <div class="card">
                                    <div class="card-header" id="headingOne">
                                      <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse{{$projects_type->id}}" aria-expanded="true" aria-controls="collapse{{$projects_type->id}}">
                                          {{$projects_type->title}}
                                        </button>
                                      </h2>
                                    </div>
                                
                                    <div id="collapse{{$projects_type->id}}" class="collapse {{$key == 0 ? 'show' : ''}}" aria-labelledby="headingOne" data-parent="#accordionExample">
                                      <div class="card-body">
                                        {{$projects_type->content}}
                                      </div>
                                    </div>
                                  </div>

                                @endforeach
                                
                              </div>
                        </div>
                        
                        <div class="property-location map">
                            <h5>Location</h5>
                            <div class="divider-fade"></div>
                            <p>{{$project[0]->address}}</p>
                            <img alt="image" src="{{Voyager::image($project[0]->image_two_link)}}">
                            
                        </div>


                    </div>
                    <aside class="col-lg-4 col-md-12 car">
                        <div class="single widget">
                            <!-- end author-verified-badge -->
                            <div class="sidebar">
                                <div class="widget-boxed mt-33 mt-5">
                                    <div class="widget-boxed-header">
                                        <h4>Request Inquiry</h4>
                                    </div>
                                    <div class="widget-boxed-body">
                                        <div class="sidebar-widget author-widget2">
                                            {{-- <div class="author-box clearfix">
                                                <img src="{{URL::to('/');}}/images/testimonials/ts-1.jpg" alt="author-image" class="author__img">
                                                <h4 class="author__title">Lisa Clark</h4>
                                                <p class="author__meta">Agent of Property</p>
                                            </div>
                                            <ul class="author__contact">
                                                <li><span class="la la-map-marker"><i class="fa fa-map-marker"></i></span>302 Av Park, New York</li>
                                                <li><span class="la la-phone"><i class="fa fa-phone" aria-hidden="true"></i></span><a href="#">(234) 0200 17813</a></li>
                                                <li><span class="la la-envelope-o"><i class="fa fa-envelope" aria-hidden="true"></i></span><a href="#">lisa@gmail.com</a></li>
                                            </ul> --}}
                                            <div class="agent-contact-form-sidebar" style="border: none">
                                                {{-- <h4>Request Inquiry</h4> --}}
                                                <form name="contact_form" method="post" action="https://code-theme.com/html/findhouses/functions.php">
                                                    <input type="text" id="fname" name="full_name" placeholder="Full Name" required />
                                                    <input type="number" id="pnumber" name="phone_number" placeholder="Phone Number" required />
                                                    <input type="email" id="emailid" name="email_address" placeholder="Email Address" required />
                                                    <textarea placeholder="Message" name="message" required></textarea>
                                                    <input type="submit" name="sendmessage" class="multiple-send-message" value="Submit Request" />
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>

            </div>
        </section>
        <!-- END SECTION PROPERTIES LISTING -->

    </div>

       
@endsection

@section('more_scripts')

<script>
document.body.classList.add(
  'inner-pages',
);
</script>
@endsection