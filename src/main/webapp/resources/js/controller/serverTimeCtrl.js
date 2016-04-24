'use strict';

myApp.controller('serverTimeController', [ '$scope', '$http', 'UserService',
		function($scope, $http, UserService) {
			console.log("***** user controller logged *****");
			$scope.serverTime = {};
			UserService.getTime().then(function(response) {
				// alert("<<<<<" + response.data + ">>>>>>>");
				$scope.serverTime = response.data;
				console.log(response.data);
			});
			
			$scope.years = {};
			UserService.getYear().then(function(response) {
				/* alert("<<<<<" + response.data + ">>>>>>>");*/
				$scope.years = response.data;
				console.log(response.data);
			});
/*
			$scope.states = {};
			$scope.states.activeItem = 'item1';
			$scope.items = [ {
				id : 'item1',
				title : 'Home',
				link : '#/'
			}, {
				id : 'item2',
				title : 'Dividend',
				link : '#/dividend'
			}, {
				id : 'item3',
				title : 'My Rooms',
				link : '#'
			} ];*/

		} ]);
