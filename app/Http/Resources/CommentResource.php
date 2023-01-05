<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CommentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
//            'subject' => $this->subject,
            'body' => $this->body,
            'article_id'=>$this->article_id,
            'img' =>!is_null($this->img)? env('APP_URL'). $this->img:null,
            'created_at' => $this->createdAtForHumans()
        ];
    }
}
