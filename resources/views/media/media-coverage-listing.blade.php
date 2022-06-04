@extends('layouts.app')

@section('content')

<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1>News</h1>
            <h2><a href="{{URL::to('/');}}">Home </a> &nbsp;/&nbsp; News</h2>
        </div>
    </div>
</section>
<!-- END SECTION HEADINGS -->

<!-- START SECTION BLOG -->
<section class="blog-section">
    <div class="container">
        <div class="news-wrap">
            <div class="row">
                @foreach ($posts as $post)
                <div class="col-xl-4 col-md-6 col-xs-12 mt-4">
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
        {{-- <nav aria-label="..." class="pt-5">
            <ul class="pagination mt-0">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                </li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav> --}}
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