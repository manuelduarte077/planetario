class MediaPresence {
  String name;
  String genre;
  String cast;
  String director;
  String synopsis;
  String imageUrl;
  String backdropUrl;
  String rating;
  int year;

  MediaPresence({
    required this.name,
    required this.genre,
    required this.cast,
    required this.director,
    required this.synopsis,
    required this.year,
    required this.rating,
    required this.imageUrl,
    required this.backdropUrl,
  });

  static List<MediaPresence> fromJson(List<dynamic>? json) {
    final _result = <MediaPresence>[];
    if (json != null) {
      for (final value in json) {
        _result.add(MediaPresence(
          name: value['name'] as String? ?? '',
          genre: value['genre'] as String? ?? '',
          cast: value['cast'] as String? ?? '',
          director: value['director'] as String? ?? '',
          synopsis: value['synopsis'] as String? ?? '',
          imageUrl: value['imageUrl'] as String? ?? '',
          rating: value['rating'] as String? ?? '',
          backdropUrl: value['backdropUrl'] as String? ?? '',
          year: value['year'] as int? ?? 0,
        ));
      }
    }
    return _result;
  }
}
