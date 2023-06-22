import 'package:clean_arch_test_app/presentation/bloc/person_event.dart';
import 'package:clean_arch_test_app/presentation/bloc/person_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/person_bloc.dart';
import '../widgets/person_card_widget.dart';

class PersonPage extends StatelessWidget{
  const PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Random person',
          style: TextStyle(color: Theme.of(context).cardColor),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
              onPressed: (){
                context.read<PersonBloc>().add(OnButtonPressed());
              },
              child: const Text('GET RANDOM PERSON'),
            )
          ),
          BlocBuilder<PersonBloc, PersonState>(
            builder: (context, state){
              if (state is PersonData) {
                return Expanded(
                  child: PersonCardWidget(data: state.data),
                );
              }
              if (state is PersonLoading) {
                return const Expanded(child: Center(child: CircularProgressIndicator(),),);
              }
              if (state is PersonEmpty) {
                return const Expanded(child: Center(),);
              }
              return const Expanded(child: Center(child: Text('ERROR'),),);
            },
          ),
        ],
      ),
    );
  }

}