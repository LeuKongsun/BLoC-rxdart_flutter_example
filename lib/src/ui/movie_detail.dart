import 'package:bloc_pattern/src/models/item_model.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  final Result result;
  MovieDetail({Key key, @required this.result}) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie detail"),),
      body: Center(
        child: Column(children: <Widget>[
          Image.network('https://image.tmdb.org/t/p/w185${widget.result.posterPath}'),
          Text(widget.result.title),
          Text(widget.result.releaseDate),
          Text(widget.result.overview)
        ],),
      ),
    );
  }
}
