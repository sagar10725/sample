'use strict';

var myApp = angular.module("angularApp", [ 'ngRoute' ]);

myApp.config(['$routeProvider', function($routeProvider) {
	$RouteProvider.
	when('/dashboard', {
		templateUrl : 'views/dashboard.jsp',
		controller : 'serverTimeController'
	}).otherwise({
		redirectTo : '/'
	})
}]);