import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //image start screen
        Image.asset(
          "assets/images/quiz-logo.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          "Learn Flutter Fun Way!",
          style: GoogleFonts.lato(
              color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        //button go to start quiz
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          //onpressed button click than go to next page
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}
