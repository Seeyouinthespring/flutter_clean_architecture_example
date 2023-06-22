class Street{
  final String name;
  final int number;

  Street({required this.name, required this.number});

  factory Street.fromJson(Map<String, dynamic> json) => Street(
    name: json['name'],
    number: json['number'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'number': number,
  };
}