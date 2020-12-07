import 'package:E_Companion/HomeScreen/Components/Quiz/model/Equestionmodel.dart';
//import 'package:tfquiz/model/Equestionmodel.dart';

List<EQuestionModel> getEQuestion(){

  List<EQuestionModel> questions = new List<EQuestionModel>();
  EQuestionModel questionModel= new EQuestionModel();

  questionModel.setEQuestion("English alphabet has 26 letters");
  questionModel.setEAnswer("True");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //2
  questionModel.setEQuestion("A is the first letter");
  questionModel.setEAnswer("True");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //3
  questionModel.setEQuestion("B is the first letter");
  questionModel.setEAnswer("False");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //4
  questionModel.setEQuestion("English");
  questionModel.setEAnswer("True");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //5
  questionModel.setEQuestion("English");
  questionModel.setEAnswer("True");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //6
  questionModel.setEQuestion("Eeeenglish");
  questionModel.setEAnswer("False");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //7
  questionModel.setEQuestion("Eeeenglish");
  questionModel.setEAnswer("False");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  questionModel = new EQuestionModel();

  //8
  questionModel.setEQuestion("English");
  questionModel.setEAnswer("True");
  questionModel.setEImageUrl("");
  questions.add(questionModel);

  return questions;
}