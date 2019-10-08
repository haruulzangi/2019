<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\products;

class ViewController extends Controller {

	public function index() {
		$data = products::all();
		return view('index')->with('data', $data);
	}

	public function search(Request $request) {
		if ($request->input('mQuery')) {
			$con = mysqli_connect(env("DB_HOST", "localhost"), env("DB_USERNAME", "root"), env("DB_PASSWORD", ""), env("DB_DATABASE", "laravel"));
			if (!$con) {
				return redirect()->route('index')->with('error', "Can't connect to database");
			}
			$sql = "SELECT * FROM products where title='" . $request->input('mQuery') . "'";
			$result = $con->query($sql);
			$resArr = [];
			if (!$result) {
				return redirect()->route('index')->with('error', 'Sorry no hackers allowed');
			}
			else {
				if ($result->num_rows == 1) {
					return redirect()->route('index')->with('success', 'We do have it!');
				}
				else {
					return redirect()->route('index')->with('error', "Sorry we don't have " . $request->input('mQuery'));
				}
			}
			return view('index')->with('data', $resArr);
		}
		else {
			return redirect()->route('index')->with('error', 'Search some item pls');
		}
	}

}