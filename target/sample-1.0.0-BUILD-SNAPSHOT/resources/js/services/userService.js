myApp.factory('UserService', [ '$http', '$q', function($http, $q) {

	return {
		getTime : function() {
			console.log("getting time form controler");
			return $http({
				method : GET,
				url : '/systemTime',
				data : '',
				DataType : 'application/json',
				headers : {
					'Accept' : 'application/json; charset=utf-8',
					'Content-Type' : 'application/json; charset=utf-8'
				}
			}).then(function(response) {
				console.log("Time: ");
				console.log("response");
				return response;
			})
		}
	}
} ]);