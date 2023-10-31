<?php

namespace App\Models;



class Post
{
    private static $blog_posts = [
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

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
