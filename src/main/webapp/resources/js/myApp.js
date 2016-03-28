///<reference path = "angualr.min.js"/>
///<reference path = "angular-route.js"/>

'use strict';

var myApp = angular.module('myapp', [ 'ngRoute' ]);

myApp.controller("myController", function($scope) {
	$scope.message = new Date();
});

myApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'dashboard',
		controller : 'serverTimeController'
	}).when('/dividend', {
		templateUrl : "dividenddetail.jsp",
		controller : 'dividendController'
	})
} ]);