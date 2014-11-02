document.createElement 'SECTION'
document.createElement 'HEADER'
document.createElement 'ASIDE'
document.createElement 'NAV'
document.createElement 'MENU'
document.createElement 'VIDEO'
document.createElement 'AUDIO'
document.createElement 'PICTURE'
document.createElement 'TIME'
document.createElement 'PROGRESS'
document.createElement 'ARTICLE'
document.createElement 'FOOTER'

Edwin = angular.module 'Edwin', ['duScroll']

Edwin.value('duScrollSpyWait', 0)

Edwin.controller 'WelcomeCtrl', ['$scope', '$window', ($scope, $window) ->
  $scope.setActive = (item)->
    $scope.active = item
  
  $scope.isActive = (item)->
    $scope.active == item
  
  $scope.images = [
    'public/images/gallery/DSC0352.jpg'
    'public/images/gallery/100_0901.jpg'
    'public/images/gallery/100_0914.jpg'
    'public/images/gallery/20130803_163445.jpg'
    'public/images/gallery/20130803_163528.jpg'
    'public/images/gallery/20131004_135721.jpg'
    'public/images/gallery/concept-.jpg'
    'public/images/gallery/DSCN2119.jpg'
    'public/images/gallery/Foto0153.jpg'
    'public/images/gallery/Gajebo3.jpg'
    'public/images/gallery/House.jpg'
    'public/images/gallery/House2.jpg'
    'public/images/gallery/MOBITECK.jpg'
  ]
  
  $scope.current = $scope.images[0]
  
  $scope.setCurrent = (direction)->
    index = $scope.images.indexOf $scope.current
    
    if direction == 'prev'
      $scope.current = $scope.images[index - 1] || $scope.images[$scope.images.length - 1]
    
    else
      $scope.current = $scope.images[index + 1] || $scope.images[0]
  
  $scope.isCurrent = (image)->
    $scope.current == image
]

Edwin.config ['$locationProvider', ($locationProvider)->
  $locationProvider.html5Mode true
]

Edwin.run ['$rootScope', '$location', ($rootScope, $location)->
  $rootScope.$on 'duScrollspy:becameActive', ($event, $element)->
    hash = $element.prop 'hash'
    if hash
      $location.hash(hash.substr(1)).replace()
      $rootScope.$apply()
]
