@extends('layouts.app')

@section('meta_tags')
<meta name="description" content="{{$page[0]->meta_description}}">
<meta name="keywords" content="{{$page[0]->meta_keywords}}">
<title>{{setting('site.title')}} - {{$page[0]->meta_title}}</title>
@endsection

@section('more_styles')
@php
    $locale = App::currentLocale()
@endphp

@endsection
@section('content')

<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1>{{$page[0]->getTranslatedAttribute('title', $locale, 'en'); }}</h1>
            <h2><a href="{{URL::to('/');}}">{{$locale == "en" ? "Home" : "الرئيسية"}} </a> &nbsp;/&nbsp; {{$page[0]->getTranslatedAttribute('title', $locale, 'en'); }}</h2>
        </div>
    </div>
</section>

<!-- START SECTION BLOG -->
<section class="blog-section">
    <div class="container">
        <div class="news-wrap">
            <div class="row">
                @foreach ($careers as $career)
                <div class="col-xl-4 col-md-6 col-xs-12 mt-4">
                    <div class="news-item" data-aos="fade-up" data-aos-delay="150">
                        <div class="news-item-text">
                            <a href="{{URL::to('/');}}/careers/{{$career->id}}"><h3>{{$career->getTranslatedAttribute('title', $locale, 'en');}}</h3></a>
                            <div class="dates">
                                <span class="date">Published at: {{date_format($career->created_at,"Y/m/d")}}</span>
                            </div>
                            <div class="news-item-descr big-news">
                                <p>{{ substr($career->getTranslatedAttribute('description', $locale, 'en'),0,80) }}....</p>
                            </div>
                            <div class="news-item-bottom">
                                <a href="{{URL::to('/');}}/careers/{{$career->id}}" class="news-link">Read more...</a>
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
    'inner-pages',
    'agents',
    'hp-6',
    'full',
    'hd-white'
    );


</script>
@endsection