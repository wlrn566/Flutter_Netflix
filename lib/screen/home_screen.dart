import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model_movie.dart';
import 'package:flutter_application_1/widget/box_slider.dart';
import 'package:flutter_application_1/widget/carousel_slider.dart';
import 'package:flutter_application_1/widget/circle_slikder.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의불시착1',
      'keyword': '사랑/로맨스/판타지1',
      'poster': 'poster1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의불시착2',
      'keyword': '사랑/로맨스/판타지2',
      'poster': 'poster1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의불시착3',
      'keyword': '사랑/로맨스/판타지3',
      'poster': 'poster1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의불시착4',
      'keyword': '사랑/로맨스/판타지4',
      'poster': 'poster1.png',
      'like': false,
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarousleImage(movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/testImg.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              "TV프로그램",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              "영화",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              "내가찜한콘텐츠",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}