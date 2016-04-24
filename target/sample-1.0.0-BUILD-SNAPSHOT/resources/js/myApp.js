///<reference path = "angualr.min.js"/>
///<reference path = "angular-route.js"/>
(function(angular) {
	'use strict';

	var myApp = angular.module('myapp', [ 'ngRoute' ]);

	myApp.controller("myController", function($scope, $location) {
		$scope.message = new Date();
		$scope.activeMenu = angular.element(document.querySelector('#home'));

		$scope.myFunc = function(link, event) {
			console.log(event.target.parentNode);
			$scope.activeMenu.removeClass('activated');
			var myEl = angular.element(event.target.parentNode);
			myEl.addClass('activated');
			$scope.activeMenu = myEl;
			$location.path(link);
		};
	});

	myApp.config([
			'$routeProvider',
			function($routeProvider) {
				$routeProvider.when(
						'/',
						{
							templateUrl : getRootContext()
									+ '/resources/pages/dashboard.jsp',
							controller : 'serverTimeController'
						}).when(
						'/dividend',
						{
							templateUrl : getRootContext()
									+ '/resources/pages/dividenddetail.jsp',
							controller : 'dividendController'
						}).when(
						'/demo',
						{
							templateUrl : getRootContext()
									+ '/resources/pages/demo.html',
							controller : ''
						}).when(
						'/try',
						{
							templateUrl : getRootContext()
									+ '/resources/pages/try.html',
							controller : ''
						})
			} ]);

})(angular);