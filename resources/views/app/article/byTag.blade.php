@extends('layouts.app')
@section('hero')
    @include('app.partials.hero')
@endsection
@section('content')
    <div class="row mt-5">
        @foreach($articles as $article)
            <div class="col-4 pb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">{{$article->title}}</h5>
                        <p class="card-text">{{$article->getBodyPreview()}}</p>
                        <p>{{$article->createdAtForHumans()}}</p>
                        <a href="{{ route('article.show', $article->slug)}}" class="btn btn-primary">Подробнее</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="mx-auto" style="width: max-content;"> {{ $articles->links() }} </div>
@endsection
