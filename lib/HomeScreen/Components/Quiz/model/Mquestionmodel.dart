class MQuestionModel{

  String question;
  String answer;
  String imageUrl;

  MQuestionModel({this.question, this.answer, this.imageUrl});

  void setMQuestion(String getQuestion){
    question = getQuestion;
  }

  void setMAnswer(String getAnswer){
    answer = getAnswer;
  }

  void setMImageUrl(String getImageUrl){
    imageUrl = getImageUrl;
  }

  String getMQuestion(){
    return question;
  }

  String getMAnswer(){
    return answer;
  }

  String getMImageUrl(){
    return imageUrl;
  }
}