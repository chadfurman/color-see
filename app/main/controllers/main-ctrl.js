/*jslint browser:true*/
'use strict';
angular.module('main')
  .controller('MainCtrl', function (Camera, Config) {

    // bind data from service
    this.ENV = Config.ENV;
    this.BUILD = Config.BUILD;

    console.log('Hello from your Controller: StartCtrl in module main:. This is your controller:', this);
    // TODO: do your controller thing

    angular.element(document.getElementById('picture')).on('click', function (event) {
      var img = event.target;
      var canvas = angular.element('<canvas/>')[0];
      canvas.width = img.width;
      canvas.height = img.height;
      canvas.getContext('2d').drawImage(img, 0, 0, img.width, img.height);
      var pixelData = canvas.getContext('2d').getImageData(event.offsetX, event.offsetY, 1, 1).data;
      var colorContainerBox = angular.element(document.getElementById('color-container'));
      var colorBox = angular.element(document.getElementById('color'));
      var colorHexCode = '#' + pixelData[0].toString(16) + pixelData[1].toString(16) + pixelData[2].toString(16);
      colorBox.css('background-color', colorHexCode);
      colorContainerBox.css('top', event.offsetY + 'px');
      colorContainerBox.css('left', event.offsetX + 'px');
      colorContainerBox.css('display', 'block');
      console.log(event.offsetY, event.offsetX);
    });
  });
