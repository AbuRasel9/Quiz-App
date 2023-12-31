import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,required this.buttonText, required this.onTap,
  });
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onTap,
        style: ElevatedButton.styleFrom(

          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          backgroundColor: Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))

        ),
        child:  Text(buttonText,textAlign: TextAlign.center ,),


    );
  }
}
