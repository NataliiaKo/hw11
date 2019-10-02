<?php


namespace App;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
//  возвращает список постов пользователя
    public function post()
    {
        return $this->hasMany(Post::class);
    }
}