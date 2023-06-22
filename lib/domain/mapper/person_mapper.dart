import 'package:clean_arch_test_app/domain/view_models/person.dart';
import 'package:intl/intl.dart';

import '../../data/entity_models/person_model.dart';

class PersonMapper{
  static PersonView map(Person entity){
    return PersonView(
        gender: entity.gender,
        fullName: '${entity.name.first} ${entity.name.last}',
        phone: entity.phone,
        email: entity.email,
        photo: entity.photo,
        address: '${entity.location.country}, ${entity.location.city}, ${entity.location.street.name} ${entity.location.street.number}',
        age: entity.dateOfBirth.age,
        birthDate: DateFormat('yyyy-MM-dd').format(entity.dateOfBirth.date) ,
    );
  }

}