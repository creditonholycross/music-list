import 'package:flutter_cpc_music_list/models/music.dart';
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
  '12': 'December'
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
