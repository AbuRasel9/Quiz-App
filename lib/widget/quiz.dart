import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/result_screens.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  //selected answere list
   List<String> selectedAnswerList=[];
  //start app first go to start screen
  var activeScreen="start-screen";



//if start quiz button click than go to question screen
  void switchScreen(){

    setState(() {
      activeScreen =  "questions-screen";


    });

    }

    //selected ans add selectedAnswerList
  void chooseAnswer(String answer){
    selectedAnswerList.add(answer);
    if(selectedAnswerList.length ==questions.length){
      setState(() {
        selectedAnswerList=[];
        activeScreen="result-screen";

      });
    }
  }

  @override
  Widget build(BuildContext context){
    Widget screenWidget=StartScreen(switchScreen);
    if(activeScreen=='questions-screen'){

      screenWidget= QuestionScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen=='result-screen'){

      screenWidget=  ResultScreen(choosenAnswer:selectedAnswerList,);
    }


    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: screenWidget

      ),
    );
  }
}
