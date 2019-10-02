<?php


namespace App;

use Illuminate\Database\Eloquent\Model;


class Post extends Model
{
// возвращает автора поста
    public function user(){
        return $this->belongsTo(User::class);
    }
// возвращает категорию поста
    public function category(){
        return $this->belongsTo(Category::class);
    }
//  возвращает теги поста
    public function tags(){
        return $this->belongsToMany(Tag::class);
    }
}