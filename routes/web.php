<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Muhamad Rivan Sahronie",
        "email" => "rivan.213040045@mail.unpas.ac.id",
        "image" => "fotovan.jpg"
    ]);
});


Route::get('/blog', function () {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Rivan Sahronie",
            "body" => "Lorem ipsum dolor sit amet consectetur."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Rivan Sahronie",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum."
        ],
    ];
    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

// Halaman Single Post
Route::get('posts/{slug}', function ($slug) {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Rivan Sahronie",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium et officia voluptatum ducimus dignissimos libero tempore at dolorem aspernatur! Ad eligendi doloremque tempore assumenda necessitatibus, recusandae eum perferendis accusamus fuga porro repellat perspiciatis dolorem beatae dolor modi minima nostrum ut voluptates, nemo a? Quaerat ex obcaecati amet ratione repudiandae laudantium."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Rivan Sahronie",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dignissimos cupiditate saepe vitae sit, ipsam hic nobis iusto perferendis, molestiae placeat iste necessitatibus, doloremque cumque culpa minus facilis! Officia ea ratione esse. Quasi, nisi hic dicta deserunt eaque maxime autem reprehenderit!"
        ],
    ];
    $new_post = [];
    foreach ($blog_posts as $post) {
        if ($post["slug"] === $slug) {
            $new_post = $post;
        }
    }
    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});
