import 'package:clean_arch_test_app/data/datasources/remote/contracts/remote_data_source.dart';
import 'package:clean_arch_test_app/data/repositories/contracts/person_repository.dart';
import 'package:clean_arch_test_app/data/repositories/implementations/person_repository_impl.dart';
import 'package:clean_arch_test_app/domain/services/contracts/person_service.dart';
import 'package:clean_arch_test_app/presentation/bloc/person_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'data/datasources/remote/implementations/remote_data_source_impl.dart';
import 'domain/services/implementations/person_service_impl.dart';

final locator = GetIt.instance;

void init(){
  //bloc
  locator.registerFactory(() => PersonBloc(locator()));

  //service
  locator.registerLazySingleton< PersonService>(() =>
      PersonServiceImplementation(locator()),
  );

  //repository
  locator.registerLazySingleton<PersonRepository>(() =>
    PersonRepositoryImplementation(locator()),
  );

  //datasource
  locator.registerLazySingleton<RemoteDataSource>(() =>
      RemoteDataSourceImplementation(),
  );

  //client
  //locator.registerLazySingleton(() => http.Client);
}