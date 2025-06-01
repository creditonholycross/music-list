class Event {
  final String dateStart;
  final String? dateEnd;
  final String? time;
  final String name;

  const Event(
      {required this.dateStart, this.dateEnd, this.time, required this.name});

  Map<String, Object?> toMap() {
    return {
      'dateStart': dateStart,
      'dateEnd': dateEnd,
      'time': time,
      'name': name
    };
  }

  factory Event.fromCsv(Map<dynamic, dynamic> dict) {
    return Event(
        dateStart: dict['date start'],
        dateEnd: dict['date end'],
        time: dict['time'],
        name: dict['name']);
  }

  String getdateLength(String date) {
    if (date.length != 10) {
      return '13';
    }
    return date.substring(5, 7);
  }

  static String formatDate(String date) {
    return date.substring(0, 5);
  }
}
