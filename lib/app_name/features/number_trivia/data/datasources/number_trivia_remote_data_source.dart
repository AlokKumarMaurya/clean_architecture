import 'package:clean_architecture/app_name/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTriviaModel> getRemoteNumberTrivia(int number);
  Future<NumberTriviaModel> getRandomNumberTrivia();
}
