'use strict';
angular.module('main')
.controller('StartCtrl', function (Camera, Config) {

  // bind data from service
  this.ENV = Config.ENV;
  this.BUILD = Config.BUILD;

  console.log('Hello from your Controller: StartCtrl in module main:. This is your controller:', this);
  // TODO: do your controller thing
});
