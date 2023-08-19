import 'package:pcsb_demo/features/Event/models/event_data_model.dart';

class XeniaNonTechEventsData {
  late EventDataModel eventDataModel;
  List<EventDataModel> NonTechEvents = [
    EventDataModel('Non-Tech Event 1', 'Non-Tech'),
    EventDataModel('Non-Tech Event 2', 'Non-Tech'),
    // Add more non-tech events
  ];
}

class XeniaTechEventsData {
  late EventDataModel eventDataModel;
  List<EventDataModel> TechEvents = [
    EventDataModel('Tech Event 1', 'Tech'),
    EventDataModel('Tech Event 2', 'Tech'),
    // Add more tech events
  ];
}
