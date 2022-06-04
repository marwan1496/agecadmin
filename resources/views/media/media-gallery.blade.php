@extends('layouts.app')

@php
    $locale = App::currentLocale()
@endphp

@section('meta_tags')
<meta name="description" content="{{$page[0]->meta_description}}">
<meta name="keywords" content="{{$page[0]->meta_keywords}}">
<title>{{setting('site.title')}} - {{$page[0]->meta_title}}</title>
@endsection

@section('content')

@section('more_styles')
<link type="text/css" rel="stylesheet" href="{{URL::to('/');}}/css/lightgallery-bundle.min.css" />
@endsection
<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1>{{$page[0]->getTranslatedAttribute('title', $locale, 'en'); }}</h1>
            <h2><a href="{{URL::to('/');}}">{{$locale == "en" ? "Home" : "الرئيسية"}} </a> &nbsp;/&nbsp; {{$page[0]->getTranslatedAttribute('title', $locale, 'en'); }}</h2>
        </div>
    </div>
</section>
<!-- END SECTION HEADINGS -->

<div class="container mt-5 mb-5">
    <div class="row">

        <div class="col-md-12">
            <div id="animated-thumbnials" class="text-center">
                @foreach ($gallery as $gallery_img)
                    
                        <a href="{{Voyager::image($gallery_img)}}">
                          <img src="{{Voyager::image($gallery_img)}}" style="width: 30%"/>
                        </a>
                
                @endforeach
                </div>
        </div>
    </div>
</div>
  
@endsection

@section('more_scripts')
    <script src="{{URL::to('/');}}/js/lightgallery.umd.js"></script>

    <!-- lightgallery plugins -->
    <script src="{{URL::to('/');}}/js/lg-thumbnail.umd.js"></script>
    <script src="{{URL::to('/');}}/js/lg-zoom.umd.js"></script>

    <script type="text/javascript">
        lightGallery(document.getElementById('animated-thumbnials'), {
            plugins: [lgZoom, lgThumbnail],
        speed: 500,
        thumbnail:true
        }); 
    </script>

 <script>
     document.body.classList.add(
        'inner-pages',
        'hd-white'
     );
 </script>
@endsection