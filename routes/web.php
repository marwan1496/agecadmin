<?php

use Illuminate\Support\Facades\Route;
use App\Models\Page;
use App\PageComponent;
use App\PageSlider;
use App\Project;
use App\Career;
use App\ProjectType;
use App\Models\Post;
use App\Models\User;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Language Switcher
Route::get('language/{locale}', function ($locale) {
    
    app()->setLocale($locale);
    session()->put('locale', $locale);
    
    return redirect()->back();
});

//Home Page
Route::get('/', function () {
    $page = Page::where('slug',Request::path())->get();
    $pageId = $page[0]->id;
    $projects = Project::all();
    $posts = Post::all();
    $pageSlider = PageSlider::where('page_id',$pageId)->get();
    
    return view('home',compact(['pageSlider','projects','posts','page']));
});


//About Us Page
Route::get('/about-us', function () {

    $page = Page::where('slug',Request::path())->get();
    $pageId = $page[0]->id;
    $pageComponents = PageComponent::where('page_id',$pageId)->get();

    $aboutSlider = PageSlider::where('page_id',$pageId)->get();
    $aboutSliderArray = json_decode($aboutSlider[0]->multiple_images);

    return view('about',compact(['pageComponents','aboutSliderArray','page']));
});


//Chairman Message
Route::get('/chairman-message', function () {
    $page = Page::where('slug',Request::path())->get();
    $pageId = $page[0]->id;
    $pageComponents = PageComponent::where('page_id',$pageId)->get();

    $chairmanSlider = PageSlider::where('page_id',$pageId)->get();
    $chairmanArray = json_decode($chairmanSlider[0]->multiple_images);

    return view('chairman_message',compact(['pageComponents','chairmanArray','page']));
});

//Contact Us Page
Route::get('/contact-us', function () {
    $page = Page::where('slug',Request::path())->get();

    return view('contactus',compact('page'));
});

//Media => Posts
Route::get('/media-coverage', function () {

    $posts = Post::all();
    return view('media.media-coverage-listing',compact('posts'));
});
Route::get('/media-coverage/{id}', function ($id) {

    $post = Post::where('id',$id)->get();
    return view('media.media-coverage-single',compact('post'));
});
Route::get('/media-gallery', function () {

    $page = Page::where('slug',Request::path())->get();
    $pageComponents = PageComponent::where('page_id',$page[0]->id)->get();

    $gallery = json_decode($pageComponents[0]->gallery);

    return view('media.media-gallery',compact(['pageComponents','page','gallery']));
});


// Projects
Route::get('/projects', function () {
    
    $projects = Project::all();
    return view('projects.projects_listings',compact('projects'));
});

Route::get('/project-details/{id}', function ($id) {
    $project = Project::where('id',$id)->get();

    $sliderImagesArray = json_decode($project[0]->images);
    $section_one_features_list = str_replace("\r\n","",$project[0]->section_one_features_list);
    $section_one_features_list = explode(",",$section_one_features_list);

    $section_two_features_list = str_replace("\r\n","",$project[0]->section_two_features_list);
    $section_two_features_list = explode(",",$section_two_features_list);

    $projects_types = ProjectType::where('project_id',$id)->get();

    return view('projects.project_details',compact(['project','sliderImagesArray','section_one_features_list','section_two_features_list','projects_types']));
});

// Careers
Route::get('/careers', function () {
    $page = Page::where('slug',Request::path())->get();

    $careers = Career::all();
    return view('careers.career_listing',compact(['careers','page']));
});

// Careers
Route::get('/careers/{id}', function ($id) {

    $page = Page::where('id',11)->get();
    $pageComponents = PageComponent::where('page_id',$page[0]->id)->get();
    $career = Career::where('id' , $id)->get();


    $section_responsibilities_list = str_replace("\r\n","",$career[0]->responsibilities);
    $section_responsibilities_list = explode(",",$career[0]->responsibilities);

    return view('careers.career_single',compact(['career','section_responsibilities_list','pageComponents']));
});




//Admin Panel
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
