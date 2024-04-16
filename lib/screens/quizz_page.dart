import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Quiz Queen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/images/vecteezy.jpg'),
              height: 300,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Who is the most famous magician in the world?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          ListTile(
            title: Text('first option'),
          ),ListTile(
            title: Text('second option'),
          ),ListTile(
            title: Text('third option'),
          ),ListTile(
            title: Text('fourth option'),
          ),
        ],
      )),
    );
  }
}
