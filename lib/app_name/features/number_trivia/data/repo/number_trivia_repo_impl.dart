import 'package:clean_architecture/app_name/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:clean_architecture/app_name/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:clean_architecture/app_name/features/number_trivia/domain/entity/number_trivia.dart';
import 'package:clean_architecture/app_name/features/number_trivia/domain/repo/number_trivia_repo.dart';

class NumberTriviaRepoImpl implements NumberTriviaRepo {
  final NumberTriviaRemoteDataSource _numberTriviaRemoteDataSource;
  final NumberTriviaLocalDataSource _numberTriviaLocalDataSource;

  NumberTriviaRepoImpl(
      this._numberTriviaRemoteDataSource, this._numberTriviaLocalDataSource);
  @override
  Future<NumberTrivia> getConcreteNumberTrivia({required int number}) async {
    if (true) //isNetwork connected
    {
      return await _numberTriviaRemoteDataSource.getRemoteNumberTrivia(number);
    } else {
      return await _numberTriviaLocalDataSource.getLastNumberTrivia();
    }
  }

  @override
  Future<NumberTrivia> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
