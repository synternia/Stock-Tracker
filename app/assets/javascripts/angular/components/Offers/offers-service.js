var offers = angular.module('offersService', ['ngResource']);
offers.factory('Offers', ['$resource', function ($resource) {
  return $resource('/api/offers/:id', { id: '@id' }, {
    update: {
      method: 'PUT' // this method issues a PUT request
    }
  });
}]);
