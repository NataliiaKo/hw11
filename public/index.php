<?php
namespace App;
require_once '/home/vagrant/hw15/vendor/autoload.php';

require_once dirname(__FILE__) .'/db.config.php';
require_once dirname(__FILE__) .'/User.php';
require_once dirname(__FILE__) .'/Tag.php';
require_once dirname(__FILE__) .'/Post.php';
require_once dirname(__FILE__) .'/Category.php';



$ident=1;
$user=User::find($ident);
echo $user->first_name." ".$user->last_name."<br>";
$posts=$user->post;
echo "<br>";
foreach ($posts as $post)
{
    echo " - ".$post->title."<br>";
}

//echo $post1->title;
//$posts=$user->post;
//var_dump($posts);





