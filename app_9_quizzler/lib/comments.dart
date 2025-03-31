// import 'quiz_brain.dart';
// import 'question.dart';
// import 'package:flutter/material.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
//
// QuizBrain quizBrain = QuizBrain();
//
// void main() => runApp(Quizzler());
//
// class Quizzler extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade900,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             child: QuizPage(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   List<Icon> scoreKeeper = [];
//   int score = 0;
//
//   void checkAnswer(bool selectedAnswer){
//     bool correctAnswer = quizBrain.getCorrectAnswer();
//     setState(() {
//       // if(selectedAnswer == correctAnswer){
//       //   scoreKeeper.add(Icon(Icons.check, color: Colors.green));
//       // } else {
//       //   scoreKeeper.add(Icon(Icons.close, color: Colors.red));
//       // }
//       // quizBrain.nextQuestion();
//
//       // scoreKeeper.add(
//       //   Icon(
//       //     Icons.check,
//       //     color: Colors.green,
//       //   ),
//       // );
//       // });
//       if (quizBrain.isFinished()) {
//         Alert(
//           context: context,
//           title: 'Quiz Finished!',
//           desc: 'Your final score is $score/${quizBrain.getTotalQuestions()}',
//         ).show();
//
//         quizBrain.reset();
//         scoreKeeper = [];
//         score = 0;
//       } else {
//         if (selectedAnswer == correctAnswer) {
//           score++;
//           scoreKeeper.add(Icon(Icons.check, color: Colors.green));
//         } else {
//           scoreKeeper.add(Icon(Icons.close, color: Colors.red));
//         }
//         quizBrain.nextQuestion();
//       }
//     });
//
//   }
//
// // List<String> questions = [
// //   'Pakistan joined SEATO in 1954',
// //   'The capital of Pakistan is Islamabad',
// //   'The Manchester of Pakistan is Lahore',
// //   'Australia\'s capital city is Sydney',
// //   'The Doha agreement was signed between US and Taliban in 2020'
// // ];
// //
// // List<bool> answers = [
// //   true,
// //   true,
// //   false,
// //   false,
// //   true
// // ];
// // int questionNumber = 0;
// //
// //   Question qi = Question(q: "Pakistan joined SEATO in 1954", a: true);
// //
//
//   // int questionNumber = 0;
//   // List<Question> questionBank = [
//   //   Question(q: "Pakistan joined SEATO in 1954", a: true),
//   //   Question(q: "The capital of Pakistan is Islamabad", a: true),
//   //   Question(q: "The Manchester of Pakistan is Lahore", a: true),
//   //   Question(q: "Australia\' capital city is Sydney", a: true),
//   //   Question(q: "The Doha agreement was signed between US and Taliban in 2020", a: true),
//   //
//   // ];
//
//   // List<Icon> scoreKeeper = [
//   //   Icon(
//   //     Icons.check,
//   //     color: Colors.green,
//   //   ),
//   //   Icon(
//   //     Icons.close,
//   //     color: Colors.red,
//   //   )
//   // ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           flex: 5,
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Center(
//               child: Text(
//                 // questionBank[questionNumber].questionText,
//                 // quizBrain.questionBank[questionNumber].questionText,
//                 quizBrain.getQuestionText(),
//                 // 'This is where the question text will go.',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             width: double.infinity,
//             margin: EdgeInsets.all(5.0),
//             color: Colors.green,
//             child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: TextButton(
//                 child: Text(
//                   'True',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                   ),
//                 ),
//                 onPressed: () {
//                   //The user picked true.
//                   // bool correctAnswer = quizBrain.questionBank[questionNumber].answer;
//                   // bool correctAnswer = quizBrain.getCorrectAnswer();
//                   //
//                   // // if(correctAnswer == true){
//                   // //
//                   // // } else {
//                   // //
//                   // // }
//                   // setState(() {
//                   //   quizBrain.nextQuestion();
//                   //   scoreKeeper.add(
//                   //     Icon(
//                   //       Icons.check,
//                   //       color: Colors.green,
//                   //     ),
//                   //   );
//                   // });
//
//                   checkAnswer(true);
//
//                 },
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             width: double.infinity,
//             margin: EdgeInsets.all(5.0),
//             color: Colors.red,
//             child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: TextButton(
//                 child: Text(
//                   'False',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 onPressed: () {
//                   //The user picked false.
//                   // bool correctAnswer = questionBank[questionNumber].answer;
//                   // bool correctAnswer = quizBrain.questionBank[questionNumber].answer;
//                   // bool correctAnswer = quizBrain.getCorrectAnswer();
//                   // if(correctAnswer == false){
//                   //
//                   // } else {
//                   //
//                   // }
//
//                   // setState(() {
//                   //   quizBrain.nextQuestion();
//                   //
//                   //   scoreKeeper.add(
//                   //     Icon(
//                   //       Icons.check,
//                   //       color: Colors.green,
//                   //     ),
//                   //   );
//                   // });
//                   checkAnswer(false);
//                 },
//               ),
//             ),
//           ),
//         ),
//
//         Row(
//           children: scoreKeeper,
//         ),
//       ],
//     );
//   }
// }
