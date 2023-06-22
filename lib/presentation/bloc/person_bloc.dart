import 'package:clean_arch_test_app/domain/services/contracts/person_service.dart';
import 'package:clean_arch_test_app/presentation/bloc/person_event.dart';
import 'package:clean_arch_test_app/presentation/bloc/person_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState>{
  final PersonService _personService;

  PersonBloc(this._personService) : super(PersonEmpty()){
    on<OnButtonPressed>((event, emit) async {
      emit(PersonLoading());
      final result = await _personService.getPersonViewModel();
      emit(PersonData(data: result));
    },);
  }

  // EventTransformer<T> debounce<T>(Duration duration) {
  //   return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  // }

}