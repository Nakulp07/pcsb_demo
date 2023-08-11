part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeEventsNavigationEvent extends HomeEvent {}

class HomeGalleryNavigationEvent extends HomeEvent {}

class HomeCalenderNavigationEvent extends HomeEvent {}

class HomeOurTeamNavigationEvent extends HomeEvent {}
