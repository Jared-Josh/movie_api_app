import 'dart:convert';

import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/models/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';
  static const _upcomingMoviesUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}';
  Future<List<Movie>> getTrendingMovies() async {
    //making a call to the api
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      // print(decodeData);
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('An error occurred');
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    //making a call to the api
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      // print(decodeData);
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('An error occurred');
    }
  }

  Future<List<Movie>> getUpcomingMovies() async {
    //making a call to the api
    final response = await http.get(Uri.parse(_upcomingMoviesUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      // print(decodeData);
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('An error occurred');
    }
  }
}
