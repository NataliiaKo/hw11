<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
//  возвращает посты, которым присвоена категория
    public function posts()
    {
        return $this->hasMany('App\Post');
    }

}