class Moon {
  String name;
  String imageUrl;
  Moon({required this.name, required this.imageUrl});

  static List<Moon> fromJson(List<dynamic>? json) {
    final _result = <Moon>[];
    if (json != null) {
      for (final value in json) {
        _result.add(Moon(
          name: value['name'] as String? ?? '',
          imageUrl: value['imageUrl'] as String? ?? '',
        ));
      }
    }
    return _result;
  }
}
