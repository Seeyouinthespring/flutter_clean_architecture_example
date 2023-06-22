import '../../entity_models/person_model.dart';

abstract class PersonRepository{
  Future<Person> fetchEntity();
}