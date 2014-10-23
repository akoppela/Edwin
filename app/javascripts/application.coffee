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

Edwin = angular.module 'Edwin', []

Edwin.controller 'WelcomeCtrl', ['$scope', ($scope) ->
]

Edwin.config ['$locationProvider', ($locationProvider)->
  $locationProvider.html5Mode true
]