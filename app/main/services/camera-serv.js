'use strict';
angular.module('main')
.factory('Camera', ['$q', function ($q) {
  return {
    getPicture: function () {
      var q = $q.defer();

      return q.promise;
    }
  };
}]);
