<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ArticleRequest;
use App\Http\Requests\Comment\CreateRequest;
use App\Jobs\AddNewArticle;
use App\Jobs\AddNewComment;
use App\Models\Article;
use App\Models\Comment;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Validator;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store(CreateRequest $request)
    {
        $img = $request->file('img');

        if (!$img){
            AddNewComment::dispatch($request['subject'], $request['body'],$request['article_id']);
            return response()->json([
                'status' => 'success',
            ], 201);
        }
        $img_file = Storage::disk('public')->putFileAs('img',$img,date('YmdHis').$img->getClientOriginalName());
        AddNewComment::dispatch($request['subject'], $request['body'],$request['article_id'],Storage::url($img_file));

        return response()->json([
            'status' => 'success',
        ], 201);
    }

    public function storeArticle(ArticleRequest $request)
    {

        AddNewArticle::dispatch($request['title'],$request['body'],$request['slug']);
        return response()->json([
            'status' => 'success',
        ], 201);


    }
}
