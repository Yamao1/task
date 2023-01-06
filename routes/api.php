<?php

use App\Http\Controllers\Api\ArticleController;
use App\Http\Controllers\Api\CommentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('article-json', [ArticleController::class, 'show']);
Route::get('article', [ArticleController::class, 'index']);
Route::post('/article-add-article', [ArticleController::class, 'storeArticle']);

Route::get('article/comments', [CommentController::class, 'articleComments']);
Route::post('article-add-comment', [CommentController::class, 'store']);



Route::fallback(function (){
    abort(404);
});
