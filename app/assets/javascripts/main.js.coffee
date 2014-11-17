# Tells Angular about the existence of the application
@restauranteur = angular.module('restauranteur', [])

# Tells Angular about the default route for the application
@restauranteur.config(['$routeProvider', ($routeProvider) ->
	$routeProvider.
	when('/restaurants', {
		templateUrl: '../templates/restaurants/index.html',
		controller: 'RestaurantIndexCtrl'
	}).
	when('/restaurants/:id', {
		templateUrl: '../templates/restaurants/show.html',
		controller: 'RestaurantShowCtrl'
	}).
	otherwise({
		templateUrl: '../templates/home.html', 
		controller: 'HomeCtrl'
		})
])