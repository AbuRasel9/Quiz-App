import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          "Learn Flutter Fun Way!",
          style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {},
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}
