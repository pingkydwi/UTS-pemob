import 'package:flutter/material.dart';
import 'home.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quineza',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      home: HomePage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/quiz': (context) => QuizPage(),
        '/result': (context) => ResultPage(score: 0),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/result') {
          final score = settings.arguments as int;
          return MaterialPageRoute(
            builder: (context) => ResultPage(score: score),
          );
        }
        return null;
      },
    );
  }
}
