
// https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=061656a4c0e04cf3add75a8a2eecb614
import 'package:dio/dio.dart';

class DioHelper
{
  static Dio dio;

  static int() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://newsapi.org/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    String url="v2/top-headlines",
    Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,
      queryParameters: query,
    );
  }

}