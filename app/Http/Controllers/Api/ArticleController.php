<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ArticleResource;
use App\Models\Article;
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
//       $article = $request->all();
//       dd(new ArticleResource($article))
       return new ArticleResource($article);
    }

}
