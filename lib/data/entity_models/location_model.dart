import 'package:clean_arch_test_app/data/entity_models/street_model.dart';

class Location{
  final String country;
  final String state;
  final String city;
  final Street street;

  Location({
    required this.country,
    required this.state,
    required this.city,
    required this.street,
  });


  factory Location.fromJson(Map<String, dynamic> json) => Location(
    country: json['country'],
    state: json['state'],
    city: json['city'],
    street: Street.fromJson(json['street']),
  );

  Map<String, dynamic> toJson() => {
    'country': country,
    'state': state,
    'city': city,
    'street': street.toJson(),
  };
}