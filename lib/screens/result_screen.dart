import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({super.key,required this.resultAnswer});

  int resultAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Result of Quiz',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: AssetImage('assets/images/cup.png'),
              ),
            ),
            const Text(
              'Your correct answers',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              resultAnswer.toString(),
              style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
