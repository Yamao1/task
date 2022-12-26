<?php

namespace App\Jobs;

use App\Models\Comment;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class AddNewComment implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

   public $tries = 3;

   protected $body;
   protected $subject;
   protected $article_id;
   protected $img;
    public function __construct($subject, $body, $article_id, $img = null)
    {
        $this->subject = $subject;
        $this->body = $body;
        $this->article_id = $article_id;
        $this->img = $img;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $comment = Comment::create([
            'subject' => $this->subject,
            'body' => $this->body,
            'article_id' =>$this->article_id,
            'img' =>$this->img,
        ]);
    }
}
