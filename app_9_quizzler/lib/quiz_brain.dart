import 'package:app_9_quizzler/question.dart';

class QuizBrain {

  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question("Pakistan joined SEATO in 1954", true),
    Question("The capital of Pakistan is Islamabad", true),
    Question("The Manchester of Pakistan is Lahore", false),
    Question("The Doha agreement was signed between US and Taliban in 2020", true),
    Question("Australia's capital city is Sydney", false),
    Question("Mount Everest is the highest mountain in the world", true),
    Question("Isaac Newton developed the theory of relativity", false),
    Question("The Eiffel Tower is located in Paris", true),
    Question("Multan is called the city of lights", false),
    Question("The currency of Japan is Yen", true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  int getTotalQuestions() {
    return _questionBank.length;
  }

}