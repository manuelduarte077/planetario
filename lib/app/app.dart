import 'package:flutter/material.dart';
import '../solar_system.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false;
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
