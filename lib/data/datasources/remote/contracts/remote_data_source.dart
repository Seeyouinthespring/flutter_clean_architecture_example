abstract class RemoteDataSource<T>{
  Future<Map<String, dynamic>> getRandomEntity();
}