<?php


namespace App;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
//  возвращает список постов пользователя
    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}