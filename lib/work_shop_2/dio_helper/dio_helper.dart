
 import 'package:dio/dio.dart';
//https://moho.glitch.me/api/convert?from=USD&amount=25&to=EGP
class DioHelper
{
  static Dio dio;

  static int() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://moho.glitch.me/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    String url="api/convert",
    Map<String,dynamic> query,
  }) async
  {
    return await dio.get(url,
      queryParameters: query,
    );
  }

}