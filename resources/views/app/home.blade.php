@extends('layouts.app')

@section('hero')
    @include('app.partials.hero')
@endsection

@section('content')
    <div id="app">
        <add-component></add-component>
        <hr>
    </div>
@endsection
@section('vue')
    <script src="{{mix('/js/app.js')}}"></script>
@endsection
