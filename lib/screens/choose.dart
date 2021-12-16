import 'package:flutter/material.dart';
import 'package:mi_card_flutter/components/reusable_card.dart';
import 'package:mi_card_flutter/constants.dart';
import 'package:mi_card_flutter/screens/gad_7.dart';
import 'package:mi_card_flutter/components/bottom_button.dart';
import 'package:mi_card_flutter/screens/gad_7_screening.dart';

Gad7 quizBrain = Gad7();

void main() => runApp(Choose());

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to WMSUCare, Juan.'),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
              colour: kInactiveCardColor,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'GAD-7',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: kInactiveCardColor,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'PHQ-9',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'Log out',
          ),
        ],
      ),
    );
  }
}


