import 'package:bloc_pattern/src/models/item_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class MovieApiProvider{
  Client client = Client();
  final _apiKey = 'fdfe317d7e12ebacdc00205a625fd41b';

  //get Movies
  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client.get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());

    if(response.statusCode ==200){
      return ItemModel.fromJson(json.decode(response.body));
    }else{
      throw Exception('Fail to load post');
    }

  }
}