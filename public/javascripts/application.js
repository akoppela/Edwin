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

  Edwin = angular.module('Edwin', ['duScroll']);

  Edwin.value('duScrollSpyWait', 0);

  Edwin.controller('WelcomeCtrl', [
    '$scope', function($scope) {
      $scope.setActive = function(item) {
        return $scope.active = item;
      };
      $scope.isActive = function(item) {
        return $scope.active === item;
      };
      $scope.images = ['public/images/gallery/DSC0352.jpg', 'public/images/gallery/100_0901.jpg', 'public/images/gallery/100_0914.jpg', 'public/images/gallery/20130803_163445.jpg', 'public/images/gallery/20130803_163528.jpg', 'public/images/gallery/20131004_135721.jpg', 'public/images/gallery/concept-.jpg', 'public/images/gallery/DSCN2119.jpg', 'public/images/gallery/Foto0153.jpg', 'public/images/gallery/Gajebo3.jpg', 'public/images/gallery/House.jpg', 'public/images/gallery/House2.jpg', 'public/images/gallery/MOBITECK.jpg'];
      $scope.current = $scope.images[0];
      $scope.setCurrent = function(direction) {
        var index;
        index = $scope.images.indexOf($scope.current);
        if (direction === 'prev') {
          return $scope.current = $scope.images[index - 1] || $scope.images[$scope.images.length - 1];
        } else {
          return $scope.current = $scope.images[index + 1] || $scope.images[0];
        }
      };
      return $scope.isCurrent = function(image) {
        return $scope.current === image;
      };
    }
  ]);

  Edwin.config([
    '$locationProvider', function($locationProvider) {
      return $locationProvider.html5Mode(true);
    }
  ]);

  Edwin.run([
    '$rootScope', '$location', function($rootScope, $location) {
      return $rootScope.$on('duScrollspy:becameActive', function($event, $element) {
        var hash;
        hash = $element.prop('hash');
        if (hash) {
          $location.hash(hash.substr(1)).replace();
          return $rootScope.$apply();
        }
      });
    }
  ]);

}).call(this);
