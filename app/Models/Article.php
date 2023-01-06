<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Article extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'email','slug'];

    public function comments() {
        return $this->hasMany(Comment::class);
    }

    public function createdAtForHumans(){
        return $this->created_at->diffForHumans();
    }

    public function scopeFindBySlug($query, $slug)
    {
        return $query->with('comments')->where('slug', $slug)->firstOrFail();
    }

}
