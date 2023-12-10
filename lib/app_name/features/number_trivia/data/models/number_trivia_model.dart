import 'package:clean_architecture/app_name/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:flutter/material.dart';

class NumberTriviaModel extends NumberTrivia {
  final int number;
  final String text;

  NumberTriviaModel({required this.number, required this.text})
      : super(number: number, text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(number: json['numbert'], text: json['text']);
  }
}
