@extends('layouts.app')

@section('more_styles')
<link type="text/css" rel="stylesheet" href="{{URL::to('/');}}/css/lightgallery-bundle.min.css" />
@endsection

@section('content')
<style>

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
.tab-content {
    padding: 20px;
}
.nav-tabs .nav-link.active {
   background: #b68e2c;
    color: #fff;
}
.nav-tabs .nav-link{
    color: #b68e2c;
}

</style>
    <!-- Wrapper -->
    <div id="wrapper">

        <!-- START SECTION PROPERTIES LISTING -->
        <section class="single-proper blog details">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 blog-pots">

                        <section class="headings-2 pt-0">
                            <div class="pro-wrapper">
                                <div class="detail-wrapper-body">
                                    <div class="listing-title-bar">
                                        <h3>{{ $project[0]->title }}</h3>
                                        <div class="mt-0">
                                            {{-- <a href="#listing-location" class="listing-address">
                                                <i class="fa fa-map-marker pr-2 ti-location-pin mrg-r-5"></i>77 - Central Park South, NYC
                                            </a> --}}
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

                        <div class="row">
                            <div class="col-md-8">
                                
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
                                {{-- <div class="blog-info details mb-30">
                                    <h5 class="mb-4">Description</h5>
                                    <p class="mb-3">
                                        {!!$project[0]->small_description!!}</p>
                                </div> --}}
                            </div>

                            <aside class="col-lg-4 col-md-12 car">
                                <div class="single widget">
                                    <!-- end author-verified-badge -->
                                    <div class="sidebar">
                                        <div class="widget-boxed mt-33">
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
                        <div class="blog-info details mb-30">
                            <h5 class="mb-4">Description</h5>
                            <p class="mb-3">
                                {!!$project[0]->small_description!!}</p>
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

                        @if (count($projects_types) > 0)
                            
                        
                        <div class="floor-plan property wprt-image-video w50 pro">
                            <h5>Project Types</h5>
                            <nav>
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">

                                @foreach ($projects_types as $key=>$projects_type)
                                
                                <a class="nav-link {{ $key == 0 ? "active" : "" }}" id="nav-{{$projects_type->id}}-tab" data-toggle="tab" href="#nav-{{$projects_type->id}}" role="tab" aria-controls="nav-{{$projects_type->id}}" aria-selected="true">{{$projects_type->title}}</a>

                                @endforeach
                            </div>
                            </nav>

                            <div class="tab-content" id="nav-tabContent">
                              

                            @foreach ($projects_types as $key=>$projects_type)

                                
                            <div class="tab-pane fade {{ $key == 0 ? "show active" : "" }}" id="nav-{{$projects_type->id}}" role="tabpanel" aria-labelledby="nav-{{$projects_type->id}}-tab">
                                {{$projects_type->content}}
                            
                            @php
                                $project_type_gallery = json_decode($projects_type->gallery);
                            @endphp
                            @if (count($project_type_gallery) > 0)
                                
                            <div id="nav-{{$projects_type->title}}" class="mt-4 mb-4">

                            @foreach ($project_type_gallery as $image)
                            <a href="{{Voyager::image($image)}}">
                                <img src="{{Voyager::image($image)}}" style="width: 30%"/>
                              </a>
                            @endforeach

                            </div>

                            <script type="text/javascript">
                                
                                document.addEventListener("DOMContentLoaded", function(event) { 
                                
                                    lightGallery(document.getElementById("nav-{{$projects_type->title}}"), {
                                    plugins: [lgZoom, lgThumbnail],
                                speed: 500,
                                thumbnail:true
                                }); 
                                });
                            </script>

                            @endif
                            </div>

                            @endforeach
                            </div>
                        </div>
                        @endif
                        
                        <div class="property-location map">
                            <h5>Location</h5>
                            <div class="divider-fade"></div>
                            <p>{{$project[0]->address}}</p>
                            <img alt="image" src="{{Voyager::image($project[0]->image_two_link)}}">
                            
                        </div>


                    </div>
                </div>

            </div>
        </section>
        <!-- END SECTION PROPERTIES LISTING -->

    </div>

       
@endsection

@section('more_scripts')

<script src="{{URL::to('/');}}/js/lightgallery.umd.js"></script>

<!-- lightgallery plugins -->
<script src="{{URL::to('/');}}/js/lg-thumbnail.umd.js"></script>
<script src="{{URL::to('/');}}/js/lg-zoom.umd.js"></script>



<script>
document.body.classList.add(
  'inner-pages',
);
</script>
@endsection