import 'package:clean_arch_test_app/domain/view_models/person.dart';

abstract class PersonService{
  Future<PersonView> getPersonViewModel();
}