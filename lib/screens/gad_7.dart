import 'package:mi_card_flutter/components/questions.dart';

class Gad7 {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Feeling nervous, anxious or on edge', true),
    Question('Not being able to stop or control worrying', true),
    Question('Worrying too much about different things', true),
    Question('Trouble relaxing', true),
    Question('Being so restless that it is hard to sit still', true),
    Question('Becoming easily annoyed or irritable', true),
    Question('Feeling afraid as if something awful might happen', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      // print('questionNum: $_questionNumber');
      // print('questionLength: ${maxQuestion()}');
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  int questionNumber() {
    return _questionNumber;
  }

  int maxQuestion() {
    return _questionBank.length;
  }

  void reset() => _questionNumber = 0; // reset question number to 0

  void isFinish() {
    // when the condition is met
    if (_questionNumber + 1 == _questionBank.length) {
      reset();
      print('finish!');
    }
  }
}