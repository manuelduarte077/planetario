import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String label;
  final Widget body;
  const InfoTile({
    Key? key,
    required this.label,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10.0),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(10.0),
        child: Text(
          label.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (_) => body,
        );
      },
    );
  }
}
