@extends('layouts.app')

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
</style>
@endsection
@section('content')

<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1>{{$post[0]->title}}</h1>
            <h2><a href="{{URL::to('/');}}">Home </a> &nbsp;/&nbsp; {{$post[0]->title}}</h2>
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
                            <div class="news-img-link">
                                <div class="news-item-img">
                                    <img class="img-responsive" src="{{Voyager::image($post[0]->image)}}" alt="blog image">
                                </div>
                            </div>
                            <div class="news-item-text details pb-0">
                                <h3>{{$post[0]->title}}</h3>
                                <div class="dates">
                                    <span class="date">Published at: {{date_format($post[0]->created_at,"Y/m/d")}}</span>
                                    {{-- <ul class="action-list pl-0">
                                        <li class="action-item pl-2"><i class="fa fa-heart"></i> <span>306</span></li>
                                        <li class="action-item"><i class="fa fa-comment"></i> <span>34</span></li>
                                        <li class="action-item"><i class="fa fa-share-alt"></i> <span>122</span></li>
                                    </ul> --}}
                                </div>
                                <div class="news-item-descr big-news details visib mb-0">
                                    <p class="mb-3">{!! $post[0]->body !!}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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