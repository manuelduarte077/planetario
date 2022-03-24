class Event {
  String name;
  String launchDate;
  String description;

  Event(
      {required this.name,
      required this.launchDate,
      required this.description});

  static List<Event> fromJson(List<dynamic>? json) {
    final _result = <Event>[];
    if (json != null) {
      for (final value in json) {
        _result.add(Event(
          name: value['name'] as String? ?? '',
          launchDate: value['launchDate'] as String? ?? '',
          description: value['description'] as String? ?? '',
        ));
      }
    }
    return _result;
  }
}
