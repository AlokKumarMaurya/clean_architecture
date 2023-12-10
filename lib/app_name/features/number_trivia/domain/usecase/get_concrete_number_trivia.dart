import 'package:clean_architecture/app_name/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:clean_architecture/app_name/features/number_trivia/domain/repo/number_trivia_repo.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepo repo;

  GetConcreteNumberTrivia(this.repo);

  Future<NumberTrivia> execute({required int number}) async {
    return await repo.getConcreteNumberTrivia(number: number);
  }
}
