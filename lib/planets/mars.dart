import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mars extends StatelessWidget {
  final double? size;
  const Mars({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 90,
      height: size ?? 90,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/mars.png'),
        ),
      ),
    );
  }
}
