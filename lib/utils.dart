import 'package:flutter/material.dart';
import 'details.dart';

extension Explorer on BuildContext {
  void explore(String planet) {
    Navigator.push(
      this,
      MaterialPageRoute<void>(
        builder: (context) => BodyDetail(
          path: planet,
        ),
      ),
    );
  }
}
