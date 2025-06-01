import 'package:csv/csv.dart';
import 'package:flutter_cpc_music_list/models/event.dart';
import 'package:flutter_cpc_music_list/models/month.dart';
import 'package:flutter_cpc_music_list/models/music.dart';
import 'package:flutter_cpc_music_list/models/service.dart';
import 'package:http/http.dart' as http;
import "package:collection/collection.dart";
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

var eventsLink =
    'https://docs.google.com/spreadsheets/d/1r71O_Bm_-dkKBTtyAPMYMfhh1lg5-MwypKAnEs2eYkQ/gviz/tq?tqx=out:csv&sheet=Events';

Future<List<MonthlyEvents>> fetchEvents() async {
  print('fetching events');
  http.Response response;

  try {
    response = await http.get((Uri.parse(eventsLink)));
  } catch (e) {
    print(e);
    if (!kIsWeb) {
      Fluttertoast.showToast(
          msg: 'Failed to fetch events, check your internet connection');
    }
    return [];
  }

  if (response.statusCode == 200) {
    var events = parseCsv(response.body);
    return groupEventsByMonth(events);
  } else {
    if (!kIsWeb) {
      Fluttertoast.showToast(msg: 'Failed to tech events');
    }
    return [];
  }
}

List<Event> parseCsv(String csv) {
  List<List<dynamic>> parsedList =
      const CsvToListConverter().convert(csv, eol: '\n');
  final keys = parsedList.first;

  var mappedList =
      parsedList.skip(1).map((v) => Map.fromIterables(keys, v)).toList();

  List<Event> eventList;

  try {
    eventList = mappedList.map((e) => Event.fromCsv(e)).toList();
  } on FormatException {
    if (!kIsWeb) {
      Fluttertoast.showToast(msg: 'Failed to fetch events');
    }
    return [];
  }

  return eventList;
}

List<MonthlyEvents> groupEventsByMonth(List<Event> eventList) {
  var monthlyList = <MonthlyEvents>[];

  var serviceMap =
      groupBy(eventList, (item) => item.getdateLength(item.dateStart));

  serviceMap
      .forEach((k, v) => monthlyList.add(MonthlyEvents.createEvent(k, v)));

  monthlyList.sort((a, b) => a.monthInt.compareTo(b.monthInt));

  return monthlyList;
}
