import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nlw5/shared/models/quiz_model.dart';
import 'package:nlw5/shared/models/user_model.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString('assets/database/user.json');
    final user = UserModel.fromJson(response);
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    final response =
        await rootBundle.loadString('assets/database/quizzes.json');
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    return quizzes;
  }
}
