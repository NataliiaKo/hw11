<?php


namespace App;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    //@todo posts() // возвращает посты, которым присвоен тег
    public function posts(){
        return $this->belongsToMany(Post::class);
    }
    //SELECT *
    //FROM posts
    //    JOIN  post_tag ON posts.id=post_tag.post_id
    //WHERE post_tag.tag_id=2;
}