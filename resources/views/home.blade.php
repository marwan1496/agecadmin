@extends('layouts.app')

@section('meta_tags')
<meta name="description" content="{{$page[0]->meta_description}}">
<meta name="keywords" content="{{$page[0]->meta_keywords}}">
<title>{{setting('site.title')}} - {{$page[0]->meta_title}}</title>
@endsection

@section('content')
<style>
    .hp-6 .rld-main-search{
        height:auto !important;
    }

.hp-6 .rld-single-select .single-select {
  width: 300px;
}
.hp-6 .rld-main-search, .hp-6 .rld-main-search .rld-single-select .single-select {
  margin-bottom: 0px;
  border-radius: 8px;
  margin-right: 15px;
  border: 0;
  -webkit-box-shadow: 0px 0px 0px 8px rgba(255, 255, 255, 0.2);
  box-shadow: none;
  background: transparent;
}
.hp-6 .rld-main-search .rld-single-select .single-select {
  border: 1px solid #fff;
  color: #fff;
}
.hp-6 .rld-single-select .single-select .list {

  color: #b68e2c;
}
.hp-6 .rld-single-select .single-select {
  width: 100%;
  background: #b68e2c !important;
  border: 0 !important;
  padding: 15px 10px !important;
  height: auto;
  border-radius: 0 !important;
}
.hp-6 .rld-single-select .single-select::before{
    content: url(images/icon-lo.png);
right: 28px;
top: 33%;
border: 0;
transform: none !important;
}


.btn-yellow{
    transition:0.2s all;
    border: 2px solid #b68e2c !important;
}
.btn-yellow:hover{
    background: transparent !important;
    color: #fff;
    transition:0.2s all;
}
.img-icon-custom{
    float:right;
    margin:5px 30px 0 0;
    transition:0.2s all;
}
.btn-yellow:hover .img-icon-custom{
    margin:5px 10px 0 0;
    transition:0.2s all;
}

.sliderBtn::before {

content: '';
position: absolute;
width: 0px;
height: 2px;
background: #fff;
opacity: 1;
z-index: 2;
left: 160px;
top: 50%;
bottom: 0;
transition:0.2s all;

}
.sliderBtn:hover:before{
    width:35px !important;
    transition:0.2s all;
}
.dark-overlay::before {
  background: rgba(33, 41, 91, 0.3) !important;
}


@media(min-width:1100px){
.dark-overlay .main-search-inner {
  bottom: 350px !important;
  left: 50px;
}
.dark-overlay h1 {
    text-align:left;
    font-size: 60px;
    line-height: 80px;
}
.desc-custom{
    text-align:left !important;
    font-size:30px !important;
}
}
@media(max-width:724px){
    .rld-single-select.col-xl-4 {
  padding: 0;
    padding-left: 0px;
  margin: auto;
}
.dark-overlay h1 {
  font-size: 40px !important;
  line-height: 50px;
}
}
</style>
        <!-- STAR HEADER SEARCH -->
        <div id="map-container" class="fullwidth-home-map dark-overlay">
            <!-- Video -->
            <div class="video-container">
                <video poster="images/bg/video-poster2.png" loop autoplay muted>
                    <source src="{!! $pageSlider[0]->video_or_image_link !!}" type="video/mp4">
                </video>
            </div>
            <div id="hero-area" class="main-search-inner search-2 vid">
                <div class="container-fluid vid" data-aos="zoom-in">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="hero-inner2">
                                <!-- Welcome Text -->
                                <div class="welcome-text">
                                    <h1 class="mb-2" style="">{!! $pageSlider[0]->header_one !!}</h1>
                                    <p class="mb-0 desc-custom" style="font-size: 18px">{!! $pageSlider[0]->header_two !!}</p>
                                    <div class="col-xl-3 pl-0 mt-4">
                                            <a class="btn btn-yellow text-left pl-4 pt-2 pb-2 sliderBtn" href="{!! $pageSlider[0]->button_link !!}" 
                                            style="font-size:20px;width: 100%;background: #b68e2c;border-radius: 0;padding: 0;margin-top: 10px; height:auto" target="_blank">
                                            <span>Discover Now</span>
                                            <img class="img-icon-custom" src="images/logoicon-white.png" style="width:40px;"/>
                                        </a>
                                    </div>
                                </div>
                                <!--/ End Welcome Text -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END HEADER SEARCH -->

        <!--Search Forms New Custom-->
        
        <!--End Custom Search Form-->
        {{-- <section class="list hp-6 full bg-black-2">
        <div class="properties-list full featured portfolio blog">
        <div class="container">
                        <!-- Search Form -->
                        <div class="col-12 px-0 parallax-searchs">
                    <div class="banner-search-wrap">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tabs_1">
                                <div class="rld-main-search">
                                    <div class="row">
                                    <div class="rld-single-select  col-xl-4" style="padding-left: 0;">
                                            <select class="select single-select">
                                                <option value="1">Property Type</option>
                                                <option value="2">Family House</option>
                                                <option value="3">Apartment</option>
                                                <option value="3">Condo</option>
                                            </select>
                                        </div>
                                        <div class="rld-single-select  col-xl-4" style="padding-left: 0;padding-right: 0;">
                                            <select class="select single-select">
                                                <option value="1">Property Type</option>
                                                <option value="2">Family House</option>
                                                <option value="3">Apartment</option>
                                                <option value="3">Condo</option>
                                            </select>
                                        </div>
                                        <div class="rld-single-select col-xl-4" style="padding-right:0">
                                            <select class="select single-select mr-0">
                                                <option value="1">Location</option>
                                                <option value="2">Los Angeles</option>
                                                <option value="3">Chicago</option>
                                                <option value="3">Philadelphia</option>
                                                <option value="3">San Francisco</option>
                                                <option value="3">Miami</option>
                                                <option value="3">Houston</option>
                                            </select>
                                        </div>
                                        <div class="col-xl-12 col-lg-12 col-md-12  pl-0 pr-0 mt-4">
                                            <a class="btn btn-yellow" href="#" style="width: 100%;border-radius: 0;padding: 0;font-size:20px;">Search Now</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

</div>
</div>
</section> --}}
                <!--/ End Search Form -->
        <!-- START SECTION RECENTLY PROPERTIES -->
        <section class="featured portfolio ho-17 bg-black-2" style="padding-top: 3.6rem;">
            <div class="container">
                <div class="row">
                    <div class="section-title col-md-5">
                        <h3>Featured</h3>
                        <h2>Properties</h2>
                    </div>
                </div>
                <div class="row portfolio-items">
                    @foreach ($projects as $project)

                    <div class="item col-lg-4 col-md-6 col-xs-12 landscapes sale">
                        <a href="{{URL::to('/');}}/project-details/{{$project->id}}" class="recent-16" data-aos="zoom-in" data-aos-delay="150">
                            <div class="recent-img16 img-center" style="background-image: url({{Voyager::image($project->featured_image)}});"></div>
                            <div class="recent-content"></div>
                            <div class="recent-details">
                                <div class="recent-title">{{$project->title}}</div>
                                {{-- <div class="recent-price">$230,000</div> --}}
                                <div class="house-details">
                                        
                                    @php
                                        $section_one_features_list = str_replace("\r\n","",$project->section_one_features_list);
                                        $section_one_features_list = explode(",",$section_one_features_list);
                                    @endphp   
                                    
                                    @for ($i=0; $i < 2; $i++)
                                        
                                    {{$section_one_features_list[$i]}} 
                                    @if ($i < 1)
                                    <span>|</span>
                                    @endif  
                                    @endfor
                                </div>
                            </div>
                            <div class="view-proper">View Details</div>
                        </a>
                    </div>

                    @endforeach
                    
                </div>
            </div>
        </section>
        <!-- END SECTION RECENTLY PROPERTIES -->


        <!-- START SECTION BLOG -->
        <section class="blog-section bg-black-1">
            <div class="container">
                <div class="section-title">
                    <h3>Latest</h3>
                    <h2>News</h2>
                </div>
                <div class="news-wrap">
                    <div class="row">
                        @foreach ($posts as $post)
                        <div class="col-xl-4 col-md-6 col-xs-12 mt-3">
                            <div class="news-item" data-aos="fade-up" data-aos-delay="150">
                                <a href="{{URL::to('/');}}/media-coverage/{{$post->id}}" class="news-img-link">
                                    <div class="news-item-img">
                                        <img class="img-responsive" src="{{Voyager::image($post->image)}}" alt="blog image">
                                    </div>
                                </a>
                                <div class="news-item-text">
                                    <a href="{{URL::to('/');}}/media-coverage/{{$post->id}}"><h3>{{$post->title}}</h3></a>
                                    <div class="dates">
                                        <span class="date">Published at: {{date_format($post->created_at,"Y/m/d")}}</span>
                                        {{-- <ul class="action-list pl-0">
                                            <li class="action-item pl-2"><i class="fa fa-heart"></i> <span>306</span></li>
                                            <li class="action-item"><i class="fa fa-comment"></i> <span>34</span></li>
                                            <li class="action-item"><i class="fa fa-share-alt"></i> <span>122</span></li>
                                        </ul> --}}
                                    </div>
                                    <div class="news-item-descr big-news">
                                        <p>{{ substr($post->excerpt,0,50) }}....</p>
                                    </div>
                                    <div class="news-item-bottom">
                                        <a href="{{URL::to('/');}}/media-coverage/{{$post->id}}" class="news-link">Read more...</a>
                                        <div class="admin">
                                            @php
                                                $getUser = App\Models\User::where('id',$post->author_id)->get();
                                            @endphp
                                            <p>By, {{$getUser[0]->name}}</p>
                                            <img src="{{Voyager::image($getUser[0]->avatar)}}" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <!-- END SECTION BLOG -->
@endsection

@section('more_scripts')

<script>
    document.body.classList.add(
    'int_dark_bg',
    'h20'
    );
</script>
@endsection


