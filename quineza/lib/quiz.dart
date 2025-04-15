import 'dart:async';
import 'package:flutter/material.dart';
import 'questions.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int score = 0;
  int totalTimeInSeconds = 360;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (totalTimeInSeconds > 0) {
        setState(() {
          totalTimeInSeconds--;
        });
      } else {
        t.cancel();
        navigateToResult();
      }
    });
  }

  void selectAnswer(int selectedIndex) {
    final currentQuestion = questionList[currentIndex];
    if (selectedIndex == currentQuestion.correctAnswerIndex) {
      score++;
    }

    if (currentIndex < questionList.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      timer?.cancel();
      navigateToResult();
    }
  }

  void navigateToResult() {
    Navigator.pushReplacementNamed(context, '/result', arguments: {'score': score,'total': questionList.length});
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final question = questionList[currentIndex];

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Quineza',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blueGrey.shade700),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Soal ke-${currentIndex + 1}',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Text(
                        question.questionText,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 24),
                    ...List.generate(question.options.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: ElevatedButton(
                          onPressed: () => selectAnswer(index),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 48),
                            backgroundColor: Colors.blueGrey[900],
                            side: BorderSide(color: Colors.indigo.shade900),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(question.options[index],style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Kuis sedang berlangsung', style: TextStyle(fontSize: 14)),
                Text('${totalTimeInSeconds}s', style: TextStyle(fontSize: 14, color: Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
