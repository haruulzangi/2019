@extends('master')
@section('content')
	<table class="table">
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
	</table>
@endsection