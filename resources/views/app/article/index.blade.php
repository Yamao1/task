@extends('layouts.app')
@section('hero')
    @include('app.partials.hero')
@endsection
@section('content')
    @section('content')
        <div id="app">
            <add-component></add-component>
        </div>

    @endsection
    @section('vue')
        <script src="{{mix('/js/app.js')}}"></script>
    @endsection

    <div class="mx-auto" style="width: max-content;"> {{ $articles->links() }} </div>
@endsection

