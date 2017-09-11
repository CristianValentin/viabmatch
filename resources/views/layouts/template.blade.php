<!DOCTYPE html>

<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset=utf-8>
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <link rel="stylesheet" href="{{asset('css/style.css')}}">
        <script src="{{asset('js/jquery-3.2.1.js')}}"></script>
        <title>{{config('app.name','MatchEntries')}}</title>
    </head>
<html>
<body>
    <div id="main">
        <header>
            @include('layouts.header')
        </header>
        <div class="container">
            @include('layouts.messages')
            @yield('content')
        </div>
    </div>
    <footer class="footer">
        @include('layouts.footer')
    </footer>
</body>
</html>