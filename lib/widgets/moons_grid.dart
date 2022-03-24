import 'package:flutter/material.dart';
import '../models/moon.dart';

class MoonsGrid extends StatelessWidget {
  final List<Moon> data;
  const MoonsGrid({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Container(
        alignment: Alignment.center,
        child: const Text('This planet does not have any moons orbiting it.'),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //TODO add MediaQuery flag
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 3
                    : 6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: data.length,
        itemBuilder: (BuildContext ctx, index) {
          final _item = data[index];
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_item.imageUrl)),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            //TODO add FittedBox
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.black,
                  child: Text(
                    _item.name,
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
