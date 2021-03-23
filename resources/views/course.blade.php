@extends('layouts.app')
@section('content')
  <course-component course_id="{{$course_id}}" phase="{{$phase}}" review="{{$review}}"/>
@endsection
