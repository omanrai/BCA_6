import 'dart:convert';

import 'package:http/http.dart' as http;

import 'dog_breed.dart';


class DogService {
  static const String baseUrl = "https://api.thedogapi.com/v1/breeds";
  static const String apiKey = "live_Mg5ncKo9FBcfY0QYAhA7ow782YIt2m3DLYMeoVAbb5eD9yDcBDTeLk3czoiqrqLX";

  Future<List<DogBreed>> fetchBreeds({int limit = 20, int page = 0}) async {
    final response = await http.get(
      Uri.parse("$baseUrl?limit=$limit&page=$page"),
      headers: {
        "x-api-key": apiKey,
      },
    );

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => DogBreed.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load dog breeds");
    }
  }



  Future fetchBreedDetail(int dogID) async {
    final response = await http.get(
      Uri.parse("$baseUrl/breeds/$dogID"),
      headers: {
        "x-api-key": apiKey,
      },
    );

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => DogBreed.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load dog breeds");
    }
  }




}
