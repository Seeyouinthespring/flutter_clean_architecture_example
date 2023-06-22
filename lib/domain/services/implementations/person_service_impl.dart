import 'package:clean_arch_test_app/data/repositories/contracts/person_repository.dart';
import 'package:clean_arch_test_app/domain/mapper/person_mapper.dart';
import 'package:clean_arch_test_app/domain/services/contracts/person_service.dart';
import 'package:clean_arch_test_app/domain/view_models/person.dart';

import '../../../data/entity_models/person_model.dart';

class PersonServiceImplementation implements PersonService{
  final PersonRepository _personRepository;

  PersonServiceImplementation(this._personRepository);

  @override
  Future<PersonView> getPersonViewModel() async {
    Person entity = await _personRepository.fetchEntity();
    return PersonMapper.map(entity);
  }
}