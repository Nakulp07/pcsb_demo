import 'package:pcsb_demo/features/Event/models/event_data_model.dart';

class XeniaNonTechEventsData {
  late EventDataModel eventDataModel;
  static List<EventDataModel> NonTechEvents = [
    EventDataModel('Campus To Corporate', 'Non-Tech'),
    EventDataModel('Snap Hunt', 'Non-Tech'),
    EventDataModel('The Gift of Gab', 'Non-Tech'),
    EventDataModel('Game Zone', 'Non-Tech'),
    EventDataModel('Dream Team', 'Non-Tech'),
    EventDataModel('Shark Tank', 'Non-Tech'),
    EventDataModel('Couch Potato', 'Non-Tech'),
    EventDataModel('Xe-Natus', 'Non-Tech'),
    // Add more non-tech events
  ];
}

class XeniaTechEventsData {
  late EventDataModel eventDataModel;
  static List<EventDataModel> TechEvents = [
    EventDataModel('Codestrike',
        'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech'),
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
