import 'dart:developer';

import 'package:flutter_suroo/models/questions_model.dart';

class QuizData {
  int index = 0;
  static List<QuestionsModel> suroolorjooptor = [
    QuestionsModel(
      suroolor: 'Kyrgyzstanda 7 oblast barby?',
      jooptor: true,
    ),
    QuestionsModel(
      suroolor: 'Kyrgyzstandyn borboru Batkenbi?',
      jooptor: false,
    ),
    QuestionsModel(
      suroolor: 'Dyinodo en jon olko Kytaiby?',
      jooptor: false,
    ),
    QuestionsModel(
      suroolor: 'Nil dyinodo en uzun daryiaby?',
      jooptor: true,
    ),
  ];

  String suroonuAlypKel() {
    if (index < suroolorjooptor.length) {
      return suroolorjooptor[index].suroolor!;
    } else {
      return '';
    }
  }

  bool joopAlipKel() {
    if (index < suroolorjooptor.length) {
      return suroolorjooptor[index].jooptor!;
    } else {
      return false;
    }
  }

  void otkoz() {
    index++;
  }

  void kairaBashta() {
    index = 0;
  }
}

final QuizData quizData = QuizData();
