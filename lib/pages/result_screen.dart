import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Answered X out of Y Questions Correctly!",
            ),
            const SizedBox(height: 30),
            Text("List of answer ad=nd ques"),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Restart Test"))
          ],
        ),
      ),
    );
  }
}
