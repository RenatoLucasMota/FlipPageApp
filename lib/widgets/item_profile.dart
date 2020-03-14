import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemProfile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const ItemProfile({Key key, this.icon, this.color, this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: 0,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        verticalOffset: 50.0,
        child: FadeInAnimation(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size: 18,
                          ),
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(8)),
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          text,
                          style: GoogleFonts.oxygen(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(Feather.chevron_right)
                  ],
                ),
              ),
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
