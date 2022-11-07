import 'package:step_01/app/constants/api_const.dart';
import 'package:step_01/app/data/models/weather_model.dart';

class WeatherRepo {
// 1: serverdin linki bolush => ApiConst.weatherApi
// 2: linkke req jibere tirgan kitepkana kerek (Dio, Http) => Dio()
// 3: kelgen jooptun status codun teksherebiz
// 4: status cod 200 go barabar bolso datasyn Weather model tuzobuz
// 5: model return kylabyz
// 6: status cod 200 go barabar emes bolso null return kylabyz

  Future<Weather?> getWeather() async {
    final response = await dio.get(ApiConst.weatherApi);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final weather = Weather.fromJson(response.data);
      return weather;
    } else {
      return null;
    }
  }
}
