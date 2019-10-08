@extends('master')
@section('content')
	<!-- <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Title</th>
	      <th scope="col">Description</th>
	    </tr>
	  </thead>
	  <tbody>
	  	@if (isset($data))
	  		@foreach($data as $elem)
	  			<tr>
			      <th scope="row">{{ $elem['id'] }}</th>
			      <td>{{ $elem['title'] }}</td>
			      <td>{{ $elem['description'] }}</td>
			    </tr>
	  		@endforeach
	  	@endif
	  </tbody>
	</table> -->
	@isset($data)
		<div class="row">
			@foreach($data as $elem)
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
			    <div class="box-part text-center bg-info">
			        <i class="fa fa-instagram fa-3x" aria-hidden="true"></i>
			        <div class="title text-white">
			            <h4>{{ $elem['title'] }}</h4>
			        </div>
			        <div class="text text-white">
			            <span>{{ $elem['description'] }}</span>
			        </div>
			        <a href="#" class="btn btn-dark">Learn More</a>
			    </div>
			</div>
			@endforeach
		</div>
	@endisset
@endsection