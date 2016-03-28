myApp.factory('UserService', [ '$http', '$q', function($http, $q) {
     //alert("service is called")
	return {
		getTime : function() {
			console.log("getting time form controler");
			return $http({
				url : 'systemTime',
				method : 'GET',				
				data : '',
				headers : {
					'Accept' : 'application/json; charset=utf-8',
					'Content-Type' : 'application/json; charset=utf-8'
				}
			}).then(function(errResponse) {
				console.log("Time: ");
				console.log("response");
				return $q.reject(errResponse);
			})
		}
	}
} ]);