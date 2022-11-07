import 'package:dio/dio.dart';

class ApiConst {
  static const String newsApi =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=97604a4cfe784fc7a9ae242ac28b2c87';

  static const String defaultImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpBAZafcETIewM5tuVRKUWoqpVNB5CKrIbGzOIB8IxWx40WQ2DK2MDkmbEin9_mu1K54Y&usqp=CAU';

  static const weatherApi =
      'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String getIcon(String iconCode, int size) {
    return 'http://openweathermap.org/img/wn/$iconCode@${size}x.png';
  }
}

final dio = Dio();
