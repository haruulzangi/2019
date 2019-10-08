<!DOCTYPE html>
<html>
<head>
	<title>Simple FTP</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		@if (Route::currentRouteName() === 'index')
			<a href="#" class="navbar-brand">Welcome to my store <small>/feel free to look some stuff/</small></a>
		@else
			<a href="{{ route('index') }}" class="navbar-brand">Home</a>
		@endif
		<div class="mx-auto order-0">
			<form method="POST" action="{{ route('search') }}">
				@csrf
				<div class="d-inline-block">
					<input type="text" name="mQuery" class="form-control">
				</div>
				<button class="btn btn-info" type="submit">Search</button>
				@if (session('error'))
					<br>
					<div class="alert alert-danger">
						{{ session('error') }}
					</div>
				@endif
			</form>
		</div>
	</nav>
	<div class="container">
		@yield('content')
	</div>
	<script type="text/javascript" src="{{ asset('js/jquery.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>