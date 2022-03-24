import 'package:flutter/material.dart';
import '../solar_system.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'RobotoCondensed'),
      home: const Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/background.jpg'),
            ),
          ),
          child: SolarSystem(),
        ),
      ),
    );
  }
}
