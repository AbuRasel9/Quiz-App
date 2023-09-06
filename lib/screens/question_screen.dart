import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widget/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex=0;
  //if ans button click than go to oter answere
  void answereQuestion(){
    setState(() {
      //current index increment 1
      currentQuestionIndex=currentQuestionIndex+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //stretch means all space horizontali cover button
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
               currentQuestion.text,
              
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 251, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
               textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30,),

          //here all 4 text button are called
            //
            ...currentQuestion.getShuffledAnswers().map((answerText) {

              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: AnswerButton(buttonText:answerText, onTap: () {answereQuestion();},),
              );


            })
          ],
        ),
      ),
    );
  }
}
