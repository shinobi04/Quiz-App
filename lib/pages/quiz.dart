import 'package:dumbproj2/pages/home_page.dart';
import 'package:dumbproj2/pages/question_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'home-page';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final widgetScreen =
        activeScreen == 'home-page' ? HomePage(switchScreen) : QuestionScreen();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(81, 0, 149, 1), body: widgetScreen),
    );
  }
}
