<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ArticleRequest;
use App\Http\Requests\Comment\CreateRequest;
use App\Jobs\AddNewArticle;
use App\Jobs\AddNewComment;
use App\Models\Article;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Validator;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store(CreateRequest $request)
    {
        $img = $request->file('img');
        $img_file = Storage::disk('public')->putFileAs('img',$img,date('YmdHis').$img->getClientOriginalName());
            if (!$img_file){
                return response()->json([
                    'status' => 'Error',
                ], 423);
            }
//       dd(Storage::url($img_file));
        AddNewComment::dispatch($request['subject'], $request['body'], $request['article_id'],Storage::url($img_file));

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
