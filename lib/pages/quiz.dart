import 'package:dumbproj2/data/questions.dart';
import 'package:dumbproj2/pages/home_page.dart';
import 'package:dumbproj2/pages/question_screen.dart';
import 'package:dumbproj2/pages/result_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'home-page';

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    var widgetScreen = activeScreen == 'home-page'
        ? HomePage(switchScreen)
        : QuestionScreen(
            onSelectAnswer: chooseAnswer,
          );
    if (activeScreen == "result-screen") {
      widgetScreen = ResultsScreen(
        chosenAnswer: selectedAnswers,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(81, 0, 149, 1), body: widgetScreen),
    );
  }
}
