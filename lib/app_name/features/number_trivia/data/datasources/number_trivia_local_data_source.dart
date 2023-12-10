import 'package:clean_architecture/app_name/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaModel> getLastNumberTrivia();
}

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  @override
  Future<NumberTriviaModel> getLastNumberTrivia() async {
    ///String jsonFromLocalStorage =awair SharedPrefrence.getString("LOCAL_DATA");
    ///return  NumberTriviaModel.fromJson(josnFromLocalStorage);
    return NumberTriviaModel(number: 1, text: "text");
  }
}
