myApp.factory('UserService', [ '$http', '$q', function($http, $q) {
	// alert("service is called")
	return {
		getTime : function() {
			console.log("getting time form controler");
			return $http({
				url : 'systemTime',
				method : 'GET',
				data : '',
				headers : {
					'Accept' : 'application/json,text/plain; charset=utf-8',
					'Content-Type' : 'application/json; charset=utf-8'
				}
			}).then(function(response) {
				console.log("Time: ");
				console.log("response");
				return response;
			})
		},
		getYear : function() {
			console.log("getting list of years...");
			return $http({
				url : 'getYear',
				method : 'GET',
				headers : {
					'Accept' : 'application/json,text/plain, */*'
				}
			}).then(function(response) {
				console.log(response);
				return response;
			})
		}
	}
} ]);