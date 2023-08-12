part of 'Event_bloc.dart';

abstract class EventState {}

abstract class ActionState extends EventState {}

class NavigatetoTechEventsActionState extends ActionState {}

class NavigatetoNonTechEventsActionState extends ActionState {}
