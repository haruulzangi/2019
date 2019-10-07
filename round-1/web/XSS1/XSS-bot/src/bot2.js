var system = require('system');
var baseHost = system.env.BASE_HOST;
var page;
var myurl = 'http://' + baseHost + "/god-wisper.php";
var timeout = 2000;


var renderPage = function (url) {
	page = require('webpage').create();

// HEADER NEMEX
	page.customHeaders = {
		 "flag": "hz19{Unw@nted_r3direct_3aZy}"
	};
// COOKIE NEMEX
	phantom.addCookie({
		'name': 'PHPSESSID',
		'value': 'adm1n-co0k1e',
		'domain': baseHost,
		'path': '/',
		'httponly': false
    });



	page.onNavigationRequested = function(url, type, willNavigate, main) {
		if (main && url!=myurl) {
			myurl = url;
			console.log("redirecting to URL="+url)
			page.close()
			setTimeout('renderPage(myurl)',1); //Note the setTimeout here
		}
	};

page.open(url, function(status) {
	if (status==="success") {
		console.log("success");
		page.render('yourscreenshot.png');
		phantom.exit(0);
	} else {
		console.log("failed");
		phantom.exit(1);
	}
});
}
renderPage(myurl);
