import 'event.dart';
import 'media_presence.dart';
import 'moon.dart';

class SolarMember {
  String name;
  int tempInK;
  int radInKm;
  List<Moon> moons;
  List<MediaPresence> mediaPresence;
  List<Event> events;

  SolarMember({
    required this.name,
    required this.tempInK,
    required this.radInKm,
    required this.moons,
    required this.mediaPresence,
    required this.events,
  });

  static SolarMember fromJson(Map<String, dynamic> json) {
    return SolarMember(
        name: json['name'] as String? ?? '',
        tempInK: json['tempInK'] as int? ?? 0,
        radInKm: json['radInKm'] as int? ?? 0,
        moons: Moon.fromJson(json['moons'] as List<dynamic>),
        mediaPresence:
            MediaPresence.fromJson(json['popculture'] as List<dynamic>),
        events: Event.fromJson(json['event'] as List<dynamic>));
  }
}
