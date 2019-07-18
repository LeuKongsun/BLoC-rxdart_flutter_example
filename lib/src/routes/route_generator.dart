import 'package:bloc_pattern/src/models/item_model.dart';
import 'package:bloc_pattern/src/ui/movie_detail.dart';
import 'package:bloc_pattern/src/ui/movie_list.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MovieList());
      case '/movieDetail':
        if (args is Result) {
          return MaterialPageRoute(builder: (_) => MovieDetail(result: args,));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
