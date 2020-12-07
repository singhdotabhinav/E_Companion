class EQuestionModel{

  String question;
  String answer;
  String imageUrl;

  EQuestionModel({this.question, this.answer, this.imageUrl});

  void setEQuestion(String getQuestion){
    question = getQuestion;
  }

  void setEAnswer(String getAnswer){
    answer = getAnswer;
  }

  void setEImageUrl(String getImageUrl){
    imageUrl = getImageUrl;
  }

  String getEQuestion(){
    return question;
  }

  String getEAnswer(){
    return answer;
  }

  String getEImageUrl(){
    return imageUrl;
  }
}