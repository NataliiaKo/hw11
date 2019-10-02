<?php
namespace App;
require_once '/home/vagrant/hw11/vendor/autoload.php';

require_once dirname(__FILE__) .'/db.config.php';
require_once dirname(__FILE__) .'/User.php';
require_once dirname(__FILE__) .'/Tag.php';
require_once dirname(__FILE__) .'/Post.php';
require_once dirname(__FILE__) .'/Category.php';


//// User - Post (posts)
//$user_id=1;
//$user=User::find($user_id);
//echo $user->first_name." ".$user->last_name."<br>";
//$posts=$user->posts;
//if($posts){
//    echo "<br>";
//    foreach ($posts as $post)
//    {
//        echo " - ".$post->title."<br>";
//    }
//}
//
//
//// Category - Post (posts)
//$category_id=1;
//$category=Category::find($category_id);
//echo $category->name."<br>";
//$posts1=$category->posts;
//echo "<br>";
//
//foreach ($posts1 as $post)
//{
//    echo " - ".$post->title."<br>";
//}
//
//echo "Post::where('category_id',\"IS NOT NULL\")";
//foreach (Post::where('category_id',">",'0')->get() as $post)
//{
//    echo " - ".$post->title."<br>";
//}
//echo $post1->title;
//$posts=$user->post;
//var_dump($posts);

//// User - Post (posts)
//$post_id=3;
//$post=Post::find($post_id);
//echo $post->title."<br>";
//$user=$post->user;
//if($user){
//    echo "<br> <strong>"."Author :</strong>".$user->first_name." ".$user->last_name;
//}else
//{
//    echo "No user for post with id = ". $post_id;
//}
//$category=$post->category;
//if($user){
//    echo "<br> <strong>"."Category</strong> is ".$category->name;
//}else
//    {
//        echo "No category for post with id = ". $post_id;
//    }
//
//$tags=$post->tags;
//if($tags) {
//    echo "<br> <strong>" . "Tags:" . "</strong>";
//    echo "<ul>";
//    foreach ($tags as $tag) {
//        echo "<li>" . $tag->name . "</li>";
//    }
//} else{
//    echo "No tags for post with id = ". $post_id;
//    }
//    echo  "</ul>";




