<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/@mdi/font@5.x/css/materialdesignicons.min.css" rel="stylesheet">
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <style>
    .title-default {
      margin: 0px;
      color: #136834;
      font-weight: 700;
      font-size: 38px;
      line-height: 28px;
      letter-spacing: -1px;
    }
      .title-muted {
      margin: 0px;
      color: #136834;
      font-weight: 400;
      font-size: 13px;
      line-height: 8px;
    } 
    </style>
  </head>
<body>
  <div id="app">
    @guest
      @yield('content')
    @else
      <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm py-0">
        <div class="container py-0">
          <img src="/img/logo/CBSUA_Logo.png" class="card-img-top rounded-circle mr-2" alt="..." style="width:50px">
          <a class="navbar-brand py-3" href="{{ url('/') }}">
            <h2 class="mb-1 title-default">{{"CBSUA"}}</h2>
            <div class="title-muted">Accreditation Portal</div>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
              <!-- Authentication Links -->
              <li class="nav-item dropdown">            
                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                {{ Auth::user()->name }}
                </a>
                
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                    {{ __('Logout') }}
                  </a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                  </form>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      @yield('content')
    @endguest
  </div>
</body>
</html>
