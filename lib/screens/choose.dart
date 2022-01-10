import 'package:flutter/material.dart';
import 'package:mi_card_flutter/components/reusable_card.dart';
import 'package:mi_card_flutter/constants.dart';
import 'package:mi_card_flutter/screens/gad_7.dart';
import 'package:mi_card_flutter/components/bottom_button.dart';
import 'package:mi_card_flutter/screens/gad_7_screening.dart';

Gad7 quizBrain = Gad7();

void main() => runApp(Choose());

class Choose extends StatelessWidget {
  static const String id = 'choose';

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
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quizzler(),
                  ),
                );*/
                Navigator.pushNamed(context, Quizzler.id);
              },
              colour: kInactiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'GAD-7 Anxiety Severity',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '\nThe Generalised Anxiety Disorder Assessment (GAD-7) is a seven-item instrument that is used to measure or assess the severity of generalised anxiety disorder (GAD)',
                      style: kBodyTextStyle2, //kLabelTextStyle,
                      maxLines: 13,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: kInactiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'PHQ-9 Depression Severity',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '\nThe PHQ-9 is the nine item depression scale of the patient health questionnaire.',
                      style: kBodyTextStyle2, //kLabelTextStyle,
                      maxLines: 13,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
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
