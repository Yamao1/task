<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ArticleResource;
use App\Models\Article;
use App\Models\Comment;
use Illuminate\Http\Request;

use App\Services\ArticleService;

class ArticleController extends Controller
{
    protected $service;

    public function __construct(ArticleService $service) {
        $this->service = $service;
    }

    public function index(Request $request){
        $article = Article::all();
//        dd(new ArticleResource($article));
        return $article;
    }


    public function show(Request $request){
        $article = $this->service->getArticleBySlug($request);
       return new ArticleResource($article);
    }

    public function comments(){
        $comments = Comment::all();
        return $comments;
    }
}
