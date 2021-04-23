import 'package:flutter/cupertino.dart';
import 'package:nlw5/home/home_repository.dart';
import 'package:nlw5/home/home_state.dart';
import 'package:nlw5/shared/models/quiz_model.dart';
import 'package:nlw5/shared/models/user_model.dart';

class HomeController {
  //USER
  //QUIZZES
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    //await Future.delayed(Duration(seconds: 2));
    user = await repository.getUser();
    state = HomeState.sucess;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    //await Future.delayed(Duration(seconds: 2));
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
