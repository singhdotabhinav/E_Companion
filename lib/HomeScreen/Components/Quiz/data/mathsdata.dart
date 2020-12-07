// import 'package:tfquiz/model/Mquestionmodel.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz/model/Mquestionmodel.dart';
//import 'package:tfquiz/model/Mquestionmodel.dart';

List<MQuestionModel> getMQuestion(){

  List<MQuestionModel> questions = new List<MQuestionModel>();
  MQuestionModel questionModel= new MQuestionModel();

  questionModel.setMQuestion("2 + 2 = 4");
  questionModel.setMAnswer("True");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //2
  questionModel.setMQuestion("9 - 5 = 4");
  questionModel.setMAnswer("True");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //3
  questionModel.setMQuestion("2 + 3 = 6");
  questionModel.setMAnswer("False");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //4
  questionModel.setMQuestion("7 comes before 8");
  questionModel.setMAnswer("True");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //5
  questionModel.setMQuestion("20 * 0 = 0");
  questionModel.setMAnswer("True");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //6
  questionModel.setMQuestion("100 has two digits");
  questionModel.setMAnswer("False");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //7
  questionModel.setMQuestion("16 - 2 = 15");
  questionModel.setMAnswer("False");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  questionModel = new MQuestionModel();

  //8
  questionModel.setMQuestion("6 is a single digit number");
  questionModel.setMAnswer("True");
  questionModel.setMImageUrl("https://scx1.b-cdn.net/csz/news/800/2015/anewwayoftea.jpg");
  questions.add(questionModel);

  return questions;
}