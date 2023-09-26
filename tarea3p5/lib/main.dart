import 'package:flutter/material.dart';
import 'package:tarea3p5/home_page.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          background: Color.fromARGB(255, 40, 37, 37),
        ),
      ),
    );
  }
}
