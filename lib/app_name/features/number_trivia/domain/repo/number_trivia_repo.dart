import 'package:clean_architecture/app_name/features/number_trivia/domain/entity/number_trivia.dart';

abstract class NumberTriviaRepo {
  Future<NumberTrivia> getConcreteNumberTrivia({required int number});
  Future<NumberTrivia> getRandomNumberTrivia();
}
