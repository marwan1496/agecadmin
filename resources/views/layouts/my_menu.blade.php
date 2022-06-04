@php
    $getLocale = App::currentLocale();
@endphp
@foreach($items as $menu_item)
    <li><a href="{{URL::to('/');}}{{ $menu_item->link() }}">{{ $menu_item->getTranslatedAttribute('title', $getLocale, 'en'); }}</a>

    @if (count($menu_item->children) > 0)
    <ul>
        @foreach ( $menu_item->children as $menuChild)
        <li><a href="{{URL::to('/');}}{{ $menuChild->link() }}">{{$menuChild->getTranslatedAttribute('title', $getLocale, 'en'); }}</a></li>
        @endforeach
    </ul>
     
    @endif
</li>
@endforeach