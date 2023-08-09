import 'dart:convert';

import 'model_api.dart';
import 'package:http/http.dart' as http;


class NewsService{
  //https://newsapi.org/v2/top-headlines?country=eg&category=business&apikey=2dea5aed340d44d79bcb4d632cbb2970
  Future<Articles> getNews({required NameNews})async{
    Uri url =
        Uri.parse('https://newsapi.org/v2/top-headlines?country=&category=$NameNews&apikey=2dea5aed340d44d79bcb4d632cbb2970');
    http.Response response = await http.get(url);
    Map<String,dynamic> data = jsonDecode(response.body);
    Articles news = Articles.fromJson(data);
    return news;

  }



}













// class WeatherService
// {
//   String baseUrl = 'http://api.weatherapi.com/v1';
//   String apiKey = '3677bed892474b30b7a122242220806';
//   Future<WeatherModel> getWeather({required String cityName}) async
//   {
//     Uri url = Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
//     http.Response response = await http.get(url);
//
//     Map<String,dynamic> data = jsonDecode(response.body);//   هيحول الاسترينج ل جيسون
//
//     WeatherModel weather = WeatherModel.fromJson(data);
//
//     return weather;
//   }
// }