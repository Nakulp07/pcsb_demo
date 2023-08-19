import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../home/bloc/home_bloc.dart';

part 'Event_event.dart';
part 'Event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  EventBloc(super.initialState) {
    // TODO: implement EventBloc
    on<EventstoTechEventsNavigationEvent>(eventstoTechEventsNavigationEvent);
    on<EventstoNonTechEventsNavigationEvent>(
        eventstoNonTechEventsNavigationEvent);
  }

  FutureOr<void> eventstoTechEventsNavigationEvent(
      EventstoTechEventsNavigationEvent event, Emitter<EventState> emit) {
    print('navigated to Tech events page');
    emit(NavigatetoTechEventsActionState());
  }

  FutureOr<void> eventstoNonTechEventsNavigationEvent(
      EventstoNonTechEventsNavigationEvent event, Emitter<EventState> emit) {
    print('navigated to Non Tech events page');
    emit(NavigatetoNonTechEventsActionState());
  }
}
