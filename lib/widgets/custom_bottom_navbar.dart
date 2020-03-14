import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  CustomBottomNavBar({Key key, this.onTap, this.currentIndex})
      : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int _itemIndex = widget.currentIndex == null ? 0 : widget.currentIndex;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtomCustomAppBarItem(
                text: 'Início',
                icon: Feather.home,
                index: 0,
                currentIndex: _itemIndex,
                onTap: () {
                  setState(() {
                    _itemIndex = 0;
                    widget.onTap(_itemIndex);
                  });
                },
              ),
              /*ButtomCustomAppBarItem(
                text: 'Pesquisar',
                icon: Feather.search,
                index: 1,
                currentIndex: _itemIndex,
                onTap: () {
                  setState(() {
                    _itemIndex = 1;
                    widget.onTap(_itemIndex);
                  });
                },
              ),*/
              ButtomCustomAppBarItem(
                text: 'Salvos',
                icon: Feather.bookmark,
                index: 1,
                currentIndex: _itemIndex,
                onTap: () {
                  setState(() {
                    _itemIndex = 1;
                    widget.onTap(_itemIndex);
                  });
                },
              ),
              ButtomCustomAppBarItem(
                text: 'Perfil',
                icon: Feather.user,
                index: 2,
                currentIndex: _itemIndex,
                onTap: () {
                  setState(() {
                    _itemIndex = 2;
                    widget.onTap(_itemIndex);
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ButtomCustomAppBarItem extends StatelessWidget {
  final int index;
  final GestureTapCallback onTap;
  final IconData icon;
  final int currentIndex;
  final String text;
  ButtomCustomAppBarItem(
      {this.index, this.onTap, this.icon, this.currentIndex, this.text});

  final tween = MultiTrackTween([
    Track("scale").add(Duration(milliseconds: 800), Tween(begin: 0.0, end: 1), curve: Curves.elasticOut),
  ]);

  @override
  Widget build(BuildContext context) {
    Color _orante = Colors.orange;
    Color _grey = Colors.grey[800];
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 80,
            height: 50,
            child: index == currentIndex
                ? Center(
                    child: ControlledAnimation(
                      playback: Playback.PLAY_FORWARD,
                      duration: tween.duration,
                      tween: tween,
                      builder: (context, animation) {
                        return Transform.scale(
                          scale: animation["scale"],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                text,
                                style: GoogleFonts.oxygen(
                                    color: Color.fromARGB(255, 232, 96, 75),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 232, 96, 75),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Icon(icon, color: index == currentIndex ? _orante : _grey),
          ),
        ],
      ),
    );
  }
}
