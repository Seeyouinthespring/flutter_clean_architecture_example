import 'package:intl/intl.dart';

class DateOfBirth{
  final int age;
  final DateTime date;

  DateOfBirth({required this.age, required this.date});

  factory DateOfBirth.fromJson(Map<String, dynamic> json) => DateOfBirth(
    age: json['age'],
    date: DateTime.parse(json['date']),
  );

  Map<String, dynamic> toJson() => {
    'age': age,
    'date': DateFormat('yyyy-MM-dd').format(date),
  };
}