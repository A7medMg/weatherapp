import 'package:dio/dio.dart';
import 'package:weather_app/models/dataModel.dart';

import '../models/bigData.dart';

class Webservicesclass {
  final String domain = "http://api.weatherapi.com/v1/forecast.json?key=";
  final String apiKey = "b3d658fc736a4abc80d121453252312";
  Dio dio;

  Webservicesclass({required this.dio});

  Future<DataModel> getData({required String cityName}) async {
    try {
      Response response = await dio.get(
        "${domain}$apiKey&q=$cityName&days=14",
      );
      DataModel dataModel = DataModel.fromJson(response.data);

      return dataModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? "something went wrong";

      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("something went wrong");
    }
  }


  Future<WeatherModel> getAllData({required String cityName}) async {
    try {
      Response response = await dio.get(
        "${domain}$apiKey&q=$cityName&days=14",
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? "something went wrong";

      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("something went wrong");
    }
  }
}
