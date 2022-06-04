@extends('layouts.app')


@section('meta_tags')
<meta name="description" content="{{$page[0]->meta_description}}">
<meta name="keywords" content="{{$page[0]->meta_keywords}}">
<title>{{setting('site.title')}} - {{$page[0]->meta_title}}</title>
@endsection


@section('content')
<section class="headings">
    <div class="text-heading text-center">
        <div class="container">
            <h1>Contact Us</h1>
            <h2><a href="index.html">Home </a> &nbsp;/&nbsp; Contact Us</h2>
        </div>
    </div>
</section>
<!-- END SECTION HEADINGS -->

<!-- START SECTION CONTACT US -->
<section class="contact-us">
    <div class="container">
        <div class="property-location mb-5">
            <h3>Our Location</h3>
            <div class="divider-fade"></div>
            <div id="map-contact" class="contact-map"></div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <h3 class="mb-4">Contact Us</h3>
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
            <div class="col-lg-4 col-md-12 bgc">
                <div class="call-info">
                    <h3>Contact Details</h3>
                    {{-- <p class="mb-5">Please find below contact details and contact us today!</p> --}}
                    <ul>
                        <li>
                            <div class="info">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <p class="in-p">Head Office: {{setting('site.head_office')}}</p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <p class="in-p">Sales: {{setting('site.sales_office')}}</p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <p class="in-p"><a style="color: #fff;text-decoration:none" href="tel:{{setting('site.hotline')}}">{{setting('site.hotline')}}</a></p>
                            </div>
                        </li>
                        @php
                            $landLinesArray = explode(",",setting('site.landlines'));
                        @endphp

                        @foreach ($landLinesArray as $landLine)
                        <li>
                            <div class="info">
                                <i class="fa fa-mobile" aria-hidden="true" style="margin-right: 0.7rem;"></i>
                                <p class="in-p"><a style="color: #fff;text-decoration:none" href="tel:{{$landLine}}">{{$landLine}}</a></p>
                            </div>
                        </li>
                        @endforeach
                        
                        <li>
                            <div class="info">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <p class="in-p ti"><a style="color: #fff;text-decoration:none" href="mailto:{{setting('site.email')}}">{{setting('site.email')}}</a></p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION CONTACT US -->



@endsection

@section('more_scripts')

<script src="{{URL::to('/');}}/js/leaflet.js"></script>
<script src="{{URL::to('/');}}/js/leaflet-gesture-handling.min.js"></script>
<script src="{{URL::to('/');}}/js/leaflet-providers.js"></script>
<script src="{{URL::to('/');}}/js/leaflet.markercluster.js"></script>
<script src="{{URL::to('/');}}/js/map-single.js"></script>

<script>
document.body.classList.add(
    'inner-pages',
    'hd-white'
    );
</script>

@endsection