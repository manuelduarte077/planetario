import 'package:flutter/material.dart';
import '../models/media_presence.dart';

class MovieLocationPageView extends StatelessWidget {
  final List<MediaPresence> data;
  const MovieLocationPageView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (_, index) {
        final _item = data[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    _item.imageUrl,
                    height: 120.0,
                  ),
                  //TODO add Expanded Row
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${_item.name}',
                          maxLines: 2,
                          style: const TextStyle(fontSize: 40),
                        ),
                        Text(
                          '${_item.year}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //TODO add Expanded
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      dense: true,
                      title: const Text('Cast'),
                      subtitle: Text(_item.cast),
                    ),
                    ListTile(
                      dense: true,
                      title: const Text('Genre'),
                      subtitle: Text(_item.genre),
                    ),
                    ListTile(
                      dense: true,
                      title: const Text('Director'),
                      subtitle: Text(_item.director),
                    ),
                    ListTile(
                      title: Text(_item.synopsis),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: data.length,
    );
  }
}
