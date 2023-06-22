import 'package:clean_arch_test_app/data/datasources/remote/contracts/remote_data_source.dart';
import 'package:clean_arch_test_app/data/repositories/contracts/person_repository.dart';

import '../../entity_models/person_model.dart';

class PersonRepositoryImplementation implements PersonRepository{


  final RemoteDataSource _remoteDataSource;

  PersonRepositoryImplementation(this._remoteDataSource);

  @override
  Future<Person> fetchEntity() async {

    // TODO handle Exception
    var json = await _remoteDataSource.getRandomEntity();
    var list = [];
    json['results'].forEach((s) {
      list.add(s);
    });

    Person personEntity = Person.fromJson(list[0]);

    return personEntity;
  }
}