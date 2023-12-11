///This is the entity in the domain layer
///That we use to extend to the model in the data layer so that the compiler does not complain for the data type mismatch
class NumberTrivia {
  final String text;
  final int number;

  NumberTrivia({required this.number, required this.text});
}
