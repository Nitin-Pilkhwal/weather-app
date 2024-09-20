import 'package:flutter/material.dart';
import 'package:weather_app/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        ((MediaQuery.of(context).platformBrightness) == Brightness.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode
          ? ThemeData.light(useMaterial3: true)
          : ThemeData.dark(useMaterial3: true),
      home: const WeatherScreen(),
    );
  }
}
