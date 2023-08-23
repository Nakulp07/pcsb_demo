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
    EventDataModel('Codestrike', 'Tech'),
    EventDataModel('Ninja Coding', 'Tech'),
    EventDataModel('Design Maestro', 'Tech'),
    EventDataModel('MineCraft Build Battles', 'Tech'),
    EventDataModel(' Xenathon (Mini Hackathon)', 'Tech'),
    EventDataModel('Circuitron', 'Tech'),
    EventDataModel('Codestrike', 'Tech'),
    EventDataModel('Ninja Coding', 'Tech'),
    EventDataModel('Innoveiren (Project Presentation)', 'Tech'),
    EventDataModel('Data Cup', 'Tech'),
    // Add more tech events
  ];
}
