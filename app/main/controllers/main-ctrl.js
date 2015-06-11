'use strict';
angular.module('main')
  .controller('MainCtrl', function (Camera, Config) {

    // bind data from service
    this.ENV = Config.ENV;
    this.BUILD = Config.BUILD;

    console.log('Hello from your Controller: StartCtrl in module main:. This is your controller:', this);
    // TODO: do your controller thing

    angular.element(document.getElementById('new-picture')).on('click', function() {
      console.log('click!');
    });
  });
