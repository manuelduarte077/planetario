import 'package:flutter/material.dart';
import '../models/event.dart';

class SolarEventsPageView extends StatelessWidget {
  final List<Event> data;
  const SolarEventsPageView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (_, index) {
        final _item = data[index];
        //TODO add LimitedBox
        return LimitedBox(
          //1
          maxHeight: MediaQuery.of(context).size.height / 2,
          //2
          maxWidth: MediaQuery.of(context).size.width,
          child: FractionallySizedBox(
            //3
            widthFactor: 0.75,
            child: _EventBody(item: _item),
          ),
        );
      },
      itemCount: data.length,
    );
  }
}

class _EventBody extends StatelessWidget {
  final Event item;
  const _EventBody({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Text(
              item.launchDate,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              item.name,
              style: const TextStyle(fontSize: 40, color: Colors.black),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              item.description,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
