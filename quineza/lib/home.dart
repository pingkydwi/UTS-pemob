import 'package:flutter/material.dart';
import 'quiz.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("Quineza",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white
            ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text("Selamat datang di Quineza",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white
              ),
              ),
            SizedBox(height: 100),
            Image.asset('assets/images/logo_unesa.png', width: 260, height: 260),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
                side: BorderSide(color: Colors.indigo.shade800),
              ),
              child: Text('Mulai Kuis',style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
