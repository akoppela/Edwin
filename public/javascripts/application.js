(function() {
  var Edwin;

  document.createElement('SECTION');

  document.createElement('HEADER');

  document.createElement('ASIDE');

  document.createElement('NAV');

  document.createElement('MENU');

  document.createElement('VIDEO');

  document.createElement('AUDIO');

  document.createElement('PICTURE');

  document.createElement('TIME');

  document.createElement('PROGRESS');

  document.createElement('ARTICLE');

  document.createElement('FOOTER');

  Edwin = angular.module('Edwin', []);

  Edwin.controller('WelcomeCtrl', ['$scope', function($scope) {}]);

  Edwin.config([
    '$locationProvider', function($locationProvider) {
      return $locationProvider.html5Mode(true);
    }
  ]);

}).call(this);
