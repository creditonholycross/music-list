import 'package:flutter_cpc_music_list/models/event.dart';
import 'package:flutter_cpc_music_list/models/service.dart';

var monthConv = {
  '01': 'January',
  '02': 'February',
  '03': 'March',
  '04': 'April',
  '05': 'May',
  '06': 'June',
  '07': 'July',
  '08': 'August',
  '09': 'September',
  '10': 'October',
  '11': 'November',
  '12': 'December',
  '13': 'TBC'
};

class MonthlyMusic {
  final String monthName;
  final String monthInt;
  final List<Service> services;

  const MonthlyMusic(
      {required this.monthName,
      required this.monthInt,
      required this.services});

  factory MonthlyMusic.createService(String monthInt, List<Service> services) {
    return MonthlyMusic(
        monthName: monthConv[monthInt] ?? 'January',
        monthInt: monthInt,
        services: services);
  }
}

class MonthlyEvents {
  final String monthName;
  final String monthInt;
  final List<Event> events;

  const MonthlyEvents(
      {required this.monthName, required this.monthInt, required this.events});

  factory MonthlyEvents.createEvent(String monthInt, List<Event> events) {
    var monthName = monthConv[monthInt] ?? 'TBC';
    if (monthName == 'TBC') {
      monthInt = '13';
    }
    return MonthlyEvents(
        monthName: monthName, monthInt: monthInt, events: events);
  }
}
