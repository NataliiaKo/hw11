<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
// @todo posts() // возвращает посты, которым присвоена категория
    public function posts(){
        return $this->belongsTo('App\Category');
    //      SELECT * FROM posts
    //      WHERE id_category NOT NULL
    }
}