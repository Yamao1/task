<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Tag;

class ArticleController extends Controller
{
    public function show($slug) {
        $article = Article::findBySlug($slug);
        return view('app.article.show', compact('article'));
    }
}
