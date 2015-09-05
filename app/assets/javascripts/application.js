//= require angular
//= require angular-ui-router
//= require angular-rails-templates
// templates in app/assets/javascripts/home
//= require_tree ./home
angular.module('flapperNews', ['ui.router','templates',])
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: '_home.html',
      controller: 'MainCtrl'
    });

  $urlRouterProvider.otherwise('home');
}])
.factory('projects', [function(){
  var o = {
    projects: []
  };
  return o;
}])
.controller('MainCtrl', [
'$scope',
'projects',
function($scope,projects){
  $scope.projects = projects.projects;
  $scope.addProject = function(){
  	if(!$scope.title || $scope.title === '') { return; }
  	$scope.projects.push({title: $scope.title,owner:'guyagui',issue:0});
  	$scope.title='';
  };
}]);
