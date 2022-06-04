@extends('layouts.app')

@php
    $locale = App::currentLocale()
@endphp

@section('more_styles')
<style>
    .inner-pages .blog-section .news-item.details {
    border: 0;
}
.inner-pages .blog-section .news-item h3 {
    font-size: 30px;
}
.inner-pages .blog-section .news-item .date {
    font-size: 16px !important;
}
button#submit-contact {
    background: #b68e2c;
    border-color: #b68e2c;
}
</style>
@endsection
@section('content')

<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1>{{$career[0]->getTranslatedAttribute('title', $locale, 'en'); }}</h1>
            <h2><a href="{{URL::to('/');}}">{{$locale == "en" ? "Home" : "الرئيسية"}} </a> &nbsp;/&nbsp; {{$career[0]->getTranslatedAttribute('title', $locale, 'en'); }}</h2>
        </div>
    </div>
</section>
<!-- END SECTION HEADINGS -->

<!-- START SECTION BLOG -->
<section class="blog blog-section bg-white">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 blog-pots" style="justify-content: center;display: flex;border: none;">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <div class="news-item details no-mb2">
                            <div class="news-item-text details pb-0">
                                <h3>{{$career[0]->title}}</h3>
                                <div class="dates">
                                    <span class="date">Published at: {{date_format($career[0]->created_at,"Y/m/d")}}</span>
                                </div>
                                <div class="news-item-descr big-news details visib mb-0" style="height: auto !important">
                                    <p class="mb-3">{!! $career[0]->description !!}</p>
                                </div>
                                <h3>{{$pageComponents[0]->content}}</h3>
                                <div class="news-item-descr big-news details visib mb-0" style="height: auto !important">
                                    <ul>
                                    @foreach ( $section_responsibilities_list as  $section_responsibility)
                                        
                                    <li>
                                        {{$section_responsibility}}
                                    </li>
                                    @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <h2 class="mb-4">Submit Now</h2>
                <form id="contactform" class="contact-form" name="contactform" method="post" novalidate>
                    <div id="success" class="successform">
                        <p class="alert alert-success font-weight-bold" role="alert">Your message was sent successfully!</p>
                    </div>
                    <div id="error" class="errorform">
                        <p>Something went wrong, try refreshing and submitting the form again.</p>
                    </div>
                    <div class="form-group">
                        <input type="text" required class="form-control input-custom input-full" name="name" placeholder="First Name">
                    </div>
                    <div class="form-group">
                        <input type="text" required class="form-control input-custom input-full" name="lastname" placeholder="Last Name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control input-custom input-full" name="email" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control textarea-custom input-full" id="ccomment" name="message" required rows="8" placeholder="Message"></textarea>
                    </div>
                    <button type="submit" id="submit-contact" class="btn btn-primary btn-lg">Submit</button>
                </form>
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
    'hd-white'
    );
</script>
@endsection