import 'package:dio/dio.dart';
import 'package:get_dio/models/user_model.dart';

class NetworkService {
  late Dio _dio;

  final baseURL = 'https://reqres.in';

  NetworkService() {
    _dio = Dio(BaseOptions(
      baseUrl: baseURL,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ));
  }
  Future<User> getUser(int number) async {
    try {
      Response response = await _dio.get('/api/users/$number');
      final user = User.fromJson(response.data);
      return user;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
