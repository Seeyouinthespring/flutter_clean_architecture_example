import 'date_of_birth_model.dart';
import 'location_model.dart';
import 'name_model.dart';

class Person{
  final String gender;
  final Name name;
  final String phone;
  final String email;
  final String photo;
  final Location location;
  final DateOfBirth dateOfBirth;

  Person({
    required this.phone,
    required this.email,
    required this.photo,
    required this.name,
    required this.gender,
    required this.location,
    required this.dateOfBirth,
  }) : super();

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    phone: json['phone'] ?? '',
    email: json['email'] ?? '',
    photo: json['picture']['large'] ?? '',
    name: Name.fromJson(json['name']),
    gender: json['gender'] ?? '',
    location: Location.fromJson(json['location']),
    dateOfBirth: DateOfBirth.fromJson(json['dob']),
  );

  Map<String, dynamic> toJson() => {
    'phone': phone,
    'email': email,
    'picture': {'medium': photo},
    'name': name.toJson(),
    'gender': gender,
    'location': location.toJson(),
    'dateOfBirth': dateOfBirth.toJson(),
  };
}