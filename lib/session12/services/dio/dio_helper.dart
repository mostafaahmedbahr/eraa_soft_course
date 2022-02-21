import 'package:dio/dio.dart';

class DioHelper
{
 static Dio dio;

 static int() {
  dio = Dio(
   BaseOptions(
    baseUrl: "https://raw.githubusercontent.com/Biuni/",
    receiveDataWhenStatusError: true,
   ),
  );
 }

 static Future<Response> getData({
    String url,
    Map<String,dynamic> query,
}) async
 {
  return await dio.get("PokemonGo-Pokedex/master/Pokedex.json",
   queryParameters: query,
  );
 }
}