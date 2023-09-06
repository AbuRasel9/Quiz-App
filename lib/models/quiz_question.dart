class QuizQuestion{
  QuizQuestion(this.text,this.answers);

  final String text;
  final List<String>answers;
//all answere value ar shuffled
  List<String>getShuffledAnswers(){
    final shuffledList=List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
    
  }
}
