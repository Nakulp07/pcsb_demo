import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEventsNavigationEvent>(homeCardNavigationEvent);
    on<HomeCalenderNavigationEvent>(homeCalenderNavigationEvent);
    on<HomeGalleryNavigationEvent>(homeGalleryNavigationEvent);
    on<HomeOurTeamNavigationEvent>(homeOurTeamNavigationEvent);
  }

  FutureOr<void> homeCardNavigationEvent(
      HomeEventsNavigationEvent event, Emitter<HomeState> emit) {
    print('navigated to event page');
    emit(NavigatetoEventpageActionState());
  }

  FutureOr<void> homeCalenderNavigationEvent(
      HomeCalenderNavigationEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> homeGalleryNavigationEvent(
      HomeGalleryNavigationEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> homeOurTeamNavigationEvent(
      HomeOurTeamNavigationEvent event, Emitter<HomeState> emit) {}
}
