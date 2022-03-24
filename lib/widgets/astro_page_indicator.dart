import 'package:flutter/material.dart';

class AstroPageIndicator extends StatelessWidget {
  final Function(int)? onPageChanged;
  const AstroPageIndicator({Key? key, this.onPageChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bodies = <Widget>[];
    for (var i = 0; i < 10; i++) {
      _bodies.add(_BodyItem(
        onVisit: () {
          if (onPageChanged != null) onPageChanged!(i);
        },
      ));
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _bodies,
    );
  }
}

class _BodyItem extends StatelessWidget {
  final VoidCallback? onVisit;
  const _BodyItem({Key? key, this.onVisit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
      onTap: onVisit,
    );
  }
}
