import 'package:mi_card_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:mi_card_flutter/constants.dart';
import 'package:mi_card_flutter/components/bottom_button.dart';
import 'package:mi_card_flutter/screens/choose.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.interpretation,
      required this.scoreResult,
      required this.resultText});

  final String scoreResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAD-7 Anxiety Test Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              onPress: () {},
              cardChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      scoreResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      //textAlign: TextAlign.end,
                      style: kBodyTextStyle,
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
              Choose();
            },
            buttonTitle: 'Go to Menu',
          ),
        ],
      ),
    );
  }
}
