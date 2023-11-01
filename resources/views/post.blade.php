@extends('layouts.main')

@section('container')
    <h1>{{ $post->title }}</h1>

    <p>By. Muhamad Rivan Sahronie in 
        <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>
    </p>

    {!! $post->body !!}


    <a href="/blog">Back to Posts</a>
@endsection