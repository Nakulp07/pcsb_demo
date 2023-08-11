part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeActionState extends HomeState {}

class NavigatetoEventpageActionState extends HomeActionState {}

class NavigatetCalenderpageActionState extends HomeActionState {}

class NavigatetoOurTeamActionState extends HomeActionState {}

class NavigatetoGalleryActionState extends HomeActionState {}
