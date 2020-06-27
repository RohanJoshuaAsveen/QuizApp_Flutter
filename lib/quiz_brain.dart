import 'question.dart';

class QuizBrain {
  int _quesNo = 0;

  List<Question> _quesBank = [
    Question('Some cats are actually allergic to humans', true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_quesNo < _quesBank.length - 1) {
      _quesNo++;
    }
  }

  String getQuestionText() {
    return _quesBank[_quesNo].ques;
  }

  bool getCorrectAnswer() {
    return _quesBank[_quesNo].ans;
  }

  bool isFinished() {
    if (_quesNo >= _quesBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _quesNo = 0;
  }
}
