import 'package:flip_pages/pages/profile_page.dart';
import 'package:flip_pages/pages/saved_page.dart';
import 'package:flip_pages/pages/start_page.dart';
import 'package:flip_pages/widgets/custom_bottom_navbar.dart';
import 'package:flippable_box/flippable_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MultiTrackTween tween;
  int _currentIndex;
  bool _boolean;
  Widget _front;
  Widget _back;
  double _heightScreen;
  Playback _animacao = Playback.PLAY_FORWARD;
  List<Widget> _list;
  Brightness _brightness = Brightness.dark;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _boolean = false;

    tween = MultiTrackTween([
      Track("scale")
          .add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.6))
          .add(Duration(milliseconds: 300), Tween(begin: 0.6, end: 1.0)),
      Track("radius")
          .add(Duration(milliseconds: 600), Tween(begin: 20.0, end: 0.0))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: _brightness,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    _heightScreen = MediaQuery.of(context).size.height + 200;
    _list = [
      Container(
        child: StartPage(),
        height: _heightScreen,
      ),
      Container(
        child: SavedPage(),
        height: _heightScreen,
      ),
      Container(
        child: ProfilePage(),
        height: _heightScreen,
      ),
    ];
    return Scaffold(
      extendBody: true,
      body: ControlledAnimation(
        playback: _animacao,
        duration: tween.duration,
        tween: tween,
        builder: (context, animation) {
          return Transform.scale(
            scale: animation['scale'],
            child: ControlledAnimation(
              playback: _animacao,
              duration: tween.duration,
              tween: tween,
              delay: Duration(milliseconds: 3000),
              builder: (context, animation) {
                return FlippableBox(
                  curve: Curves.easeInCubic,
                  clipRadius: animation['radius'],
                  front: _front == null ? _list[0] : _front,
                  back: _back == null ? _list[1] : _back,
                  isFlipped: _boolean,
                );
              },
            ),
          );
        },
      ),
      backgroundColor: Color.fromARGB(255, 232, 96, 75),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (_currentIndex != index) {
            setState(() {
              _animacao = Playback.START_OVER_FORWARD;
              _boolean = !_boolean;
              _currentIndex = index;

              if (_boolean == true) {
                _back = _list[_currentIndex];
              } else {
                _front = _list[_currentIndex];
              }
              switch (index) {
                case 0:
                  _brightness = Brightness.dark;
                  break;
                case 1:
                  _brightness = Brightness.light;
                  break;
                case 2:
                  _brightness = Brightness.light;
                  break;
                default:
                  _brightness = Brightness.dark;
                  break;
              }
            });
          }
        },
      ),
    );
  }
}
