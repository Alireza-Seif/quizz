import 'package:quizz/data/questions.dart';

List<Questions> getQuestionsList() {
  var firstQuestions = Questions();
  firstQuestions.questionTitle =
      'Who is the most famous magician in the world?';
  firstQuestions.imgaeNameNumber = '1';
  firstQuestions.correctAnswer = 2;
  firstQuestions.answerList = [
    'Alireza Seif'
        'David Copperfield'
        'Harry Houdini'
        'David Blaine'
  ];

  var secondQuestion = Questions();
  secondQuestion.questionTitle = 'Which country built Mir space station?';
  secondQuestion.imgaeNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = [
    'Former Soviet Union (Russia).',
    'America',
    'china',
    'India'
  ];

  return [firstQuestions, secondQuestion];
}
