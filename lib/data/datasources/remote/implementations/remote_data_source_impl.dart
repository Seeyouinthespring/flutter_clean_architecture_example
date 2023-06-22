import 'dart:convert';

import 'package:clean_arch_test_app/data/datasources/remote/contracts/remote_data_source.dart';
import 'package:http/http.dart';

class RemoteDataSourceImplementation implements RemoteDataSource{

  final Client client = Client();

  RemoteDataSourceImplementation();

  @override
  Future<Map<String, dynamic>> getRandomEntity() async {
    final Response response = await client.get(Uri.https('randomuser.me','/api',));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception();
    }
  }

}