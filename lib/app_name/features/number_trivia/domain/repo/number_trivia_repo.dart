import 'package:clean_architecture/app_name/features/number_trivia/domain/entity/number_trivia.dart';

///This is the abstract class in domain layer and this we implement in the data layer
///under data repo_implementation
abstract class NumberTriviaRepo {
  Future<NumberTrivia> getConcreteNumberTrivia({required int number});
  Future<NumberTrivia> getRandomNumberTrivia();
}
