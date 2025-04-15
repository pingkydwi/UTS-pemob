import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int score;

  const ResultPage({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final score = args['score'] as int;
    final total = args['total'] as int;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Hasil Kuis'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Skor Anda:',
              style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '$score / $total',
              style: TextStyle(fontSize: 36, color: Colors.indigoAccent),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
                side: BorderSide(color: Colors.indigo.shade800),
              ),
              child: Text('Kembali ke Menu Utama',style: TextStyle(color: Colors.white),)
            ),
          ],
        ),
      ),
    );
  }
}
