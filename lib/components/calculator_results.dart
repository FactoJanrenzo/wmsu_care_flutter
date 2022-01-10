
class CalculatorResult {
  static const String id = 'CalculatorResult';

  CalculatorResult({required this.count});

  final int count;

  late double _result;

  String calculateCount() {
    _result = count.toDouble() ;
    return _result.toStringAsFixed(1);
  }

  String getResult() {
    if(_result <= 4) {
      return 'Anxiety Severity:\nNone-minimal';
    } else if(_result >= 5 && _result <= 9) {
      return 'Anxiety Severity:\nMild';
    } else if(_result >= 9 && _result <= 14) {
      return 'Anxiety Severity:\nModerate Severe';
    } else if(_result >= 15 && _result <= 19) {
      return 'Anxiety Severity:\nModerate';
    }
    else {
      return 'Anxiety Severity: Severe';
    }
  }

  String getInterpretation() {
    if (_result <= 4) {
      return 'Proposed Treatment Actions: None';
    } else if (_result >= 5 && _result <= 9) {
      return 'Proposed Treatment Actions: Watchful waiting; repeat PHQ-9 at follow-up';
    } else if (_result >= 9 && _result <= 14) {
      return 'Proposed Treatment Actions: Treatment plan, considering counseling, follow-up and/or pharmacotherapy';
    } else if (_result >= 15 && _result <= 19) {
      return 'Proposed Treatment Actions: Active treatment with pharmacotherapy and/or psychotherapy';
    } else {
      return 'Immediate initiation of pharmacotherapy and, if severe impairment or poor response to therapy, expedited referral to a mental health specialist for psychotherapy and/or collaborative management';
    }
  }
}

