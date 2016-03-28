'use strict';

myApp.controller('serverTimeController', [ '$scope', 'UserService',
		function($scope, UserService) {
			console.log("***** user controller logged *****");
			$scope.serverTime = {};
			UserService.getTime().then(function(response) {
				alert("<<<<<" +  response.data + ">>>>>>>");
				$scope.serverTime = response.data;
				console.log(response.data);
			})

		} ]);
