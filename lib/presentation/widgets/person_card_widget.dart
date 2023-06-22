import 'package:flutter/material.dart';

import '../../domain/view_models/person.dart';

class PersonCardWidget extends StatelessWidget{
  final PersonView data;

  const PersonCardWidget({Key? key,
    required this.data
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: Image.network(
            data.photo,
            fit: BoxFit.fill,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              }
          ),
        ),
        Text('Имя: ${data.fullName}', style: const TextStyle(fontSize: 18),),
        Text('Возраст: ${data.age}', style: const TextStyle(fontSize: 18),),
        Text('Адрес: ${data.address}', style: const TextStyle(fontSize: 18),),
        Text('Email: ${data.email}', style: const TextStyle(fontSize: 18),),
        Text('Телефон: ${data.phone}', style: const TextStyle(fontSize: 18),),
        Text('Пол: ${data.gender}', style: const TextStyle(fontSize: 18),),
        Text('Дата рождения: ${data.birthDate} ', style: const TextStyle(fontSize: 18),),
      ],
    );
  }
}