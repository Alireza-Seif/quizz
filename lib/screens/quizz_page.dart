import 'package:flutter/material.dart';
import 'package:quizz/constants/Constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showQuestionIndex = 0;
  var list = [
    const ListTile(
      title: Text('first option'),
    ),
    const ListTile(
      title: Text('second option'),
    ),
    const ListTile(
      title: Text('third option'),
    ),
    const ListTile(
      title: Text('fourth option'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String showImageIndex =
        getQuestionsList()[showQuestionIndex].imgaeNameNumber!;

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
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/images/$showImageIndex.jpg'),
              height: 300,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            getQuestionsList()[showQuestionIndex].questionTitle!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
          ...List.generate(
              4,
              (index) => ListTile(
                    title:
                        Text(getQuestionsList()[showQuestionIndex].answerList![index]),
                  )),
        ],
      )),
    );
  }
}
