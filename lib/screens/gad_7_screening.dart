import 'package:flutter/material.dart';
import 'package:mi_card_flutter/components/calculator_results.dart';
import 'package:mi_card_flutter/screens/gad_7.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:mi_card_flutter/screens/results.dart';
import 'package:mi_card_flutter/components/bottom_button.dart';

Gad7 quizBrain = Gad7();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GAD-7 Anxiety Test'),
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      );

  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int count = 0;
  int max = quizBrain.maxQuestion();
  int total = 0;
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    print('$count ${quizBrain.questionNumber()}'); // print console add
    print('$max ${quizBrain.maxQuestion()}'); // print the maximum
    setState(() {
      if (userPickedAnswer == correctAnswer &&
          count < quizBrain.maxQuestion()) {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        if (count < quizBrain.maxQuestion()) {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
      quizBrain.nextQuestion();
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.deepOrange[600],
              ),
              child: Text(
                'Not at all',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                if (count == quizBrain.maxQuestion() - 1) {
                  Alert(
                    context: context,
                    title: "Finish!",
                    desc: "You've reached the end of the Screening.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Proceed to Result",
                          style: TextStyle(color: Colors.deepOrange[900], fontSize: 15),
                        ),
                        onPressed: () {
                          scoreKeeper.clear();
                          quizBrain.isFinish();
                          count = 0;
                          //main();
                          Navigator.pop(context);
                          CalculatorResult? calc =
                          CalculatorResult(count: total);
                          total = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultsPage(
                                scoreResult: calc.calculateCount(),
                                resultText: calc.getResult(),
                                interpretation: calc.getInterpretation(),
                              ),
                            ),
                          );
                        },
                        width: 120,
                      ),
                    ],
                  ).show();
                }
                checkAnswer(true);
                total += 0;
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.deepOrange[700],
              ),
              child: Text(
                'Several Days',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                if (count == quizBrain.maxQuestion() - 1) {
                  Alert(
                    context: context,
                    title: "Finish!",
                    desc: "You've reached the end of the screening.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Proceed to Result",
                          style: TextStyle(color: Colors.deepOrange[900], fontSize: 15),
                        ),
                        onPressed: () {
                          scoreKeeper.clear();
                          quizBrain.isFinish();
                          count = 0;
                          //main();
                          Navigator.pop(context);
                          CalculatorResult? calc =
                          CalculatorResult(count: total);
                          total = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultsPage(
                                scoreResult: calc.calculateCount(),
                                resultText: calc.getResult(),
                                interpretation: calc.getInterpretation(),
                              ),
                            ),
                          );
                        },
                        width: 120,
                      )
                    ],
                  ).show();
                }
                checkAnswer(true);
                total += 1;
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.deepOrange[700],
              ),
              child: Text(
                'More than half the days',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                if (count == quizBrain.maxQuestion() - 1) {
                  Alert(
                    context: context,
                    title: "Finish!",
                    desc: "You've reached the end of the screening.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Proceed to Result",
                          style: TextStyle(color: Colors.deepOrange[900], fontSize: 15),
                        ),
                        onPressed: () {
                          scoreKeeper.clear();
                          quizBrain.isFinish();
                          count = 0;
                          //main();
                          Navigator.pop(context);
                          CalculatorResult? calc =
                          CalculatorResult(count: total);
                          total = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultsPage(
                                scoreResult: calc.calculateCount(),
                                resultText: calc.getResult(),
                                interpretation: calc.getInterpretation(),
                              ),
                            ),
                          );
                        },
                        width: 120,
                      )
                    ],
                  ).show();
                }
                checkAnswer(true);
                total += 2;
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.deepOrange[700],
              ),
              child: Text(
                'Nearly everyday',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                if (count == quizBrain.maxQuestion() - 1) {
                  Alert(
                    context: context,
                    title: "Finish!",
                    desc: "You've reached the end of the screening.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Proceed to Result",
                          style: TextStyle(color: Colors.deepOrange[900], fontSize: 15),
                        ),
                        onPressed: () {
                          scoreKeeper.clear();
                          quizBrain.isFinish();
                          count = 0;
                          //main();
                          Navigator.pop(context);
                          CalculatorResult? calc =
                          CalculatorResult(count: total);
                          total = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultsPage(
                                scoreResult: calc.calculateCount(),
                                resultText: calc.getResult(),
                                interpretation: calc.getInterpretation(),
                              ),
                            ),
                          );
                        },
                        width: 120,
                      )
                    ],
                  ).show();
                }
                checkAnswer(true);
                total += 3;
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
        BottomButton(
          onTap: () {
            Navigator.pop(context);
          },
          buttonTitle: 'Back to Menu',
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
