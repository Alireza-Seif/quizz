import 'package:flutter/material.dart';
import 'package:quizz/constants/Constants.dart';
import 'package:quizz/data/Questions.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showQuestionIndex = 0;
  Questions? selectedQuestion;
  bool isFinalAnswerSubmited = false;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[showQuestionIndex];
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
              image: AssetImage('assets/images/$showImageIndex.png'),
              height: 300,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            selectedQuestion!.questionTitle!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
          ...List.generate(4, (index) => getOptionsList(index)),
          if (isFinalAnswerSubmited)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(200.0, 50.0),
              ),
              child: const Text(
                'View quiz results',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
        ],
      )),
    );
  }

  ListTile getOptionsList(int index) {
    return ListTile(
      title: Text(selectedQuestion!.answerList![index]),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          print('correct');
        } else {
          print('wrong');
        }

        if (showQuestionIndex < getQuestionsList().length - 1) {
          isFinalAnswerSubmited = true;
        }

        setState(() {
          if (showQuestionIndex < getQuestionsList().length - 1) {
            showQuestionIndex++;
          }
        });
      },
    );
  }
}
