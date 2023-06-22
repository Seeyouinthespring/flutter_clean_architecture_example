import 'package:clean_arch_test_app/domain/view_models/person.dart';

sealed class PersonState{
  const PersonState();
}

class PersonEmpty extends PersonState{}

class PersonLoading extends PersonState{}

class PersonError extends PersonState{
  final String message;
  PersonError({required this.message});
}

class PersonData extends PersonState{
  final PersonView data;
  PersonData({required this.data});
}

