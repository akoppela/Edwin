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

Edwin.controller 'WelcomeCtrl', ['$scope', ($scope) ->
  $scope.setActive = (item)->
    $scope.active = item
  
  $scope.isActive = (item)->
    $scope.active == item
  
  $scope.images = [
    'public/images/gallery/_DSC0352.jpg'
    'public/images/gallery/100_0901.JPG'
    'public/images/gallery/100_0914.JPG'
    'public/images/gallery/20130803_163445.jpg'
    'public/images/gallery/20130803_163528.jpg'
    'public/images/gallery/20131004_135721.jpg'
    'public/images/gallery/concept-.jpg'
    'public/images/gallery/DSCN2119.JPG'
    'public/images/gallery/Foto0153.JPG'
    'public/images/gallery/Gajebo3.JPG'
    'public/images/gallery/House.JPG'
    'public/images/gallery/House2.JPG'
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