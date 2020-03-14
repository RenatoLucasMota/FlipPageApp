import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSlide extends StatelessWidget {
  final String image;
  final int index;
  final int cuttentIndex;
  final String title;
  final String subtitle;

  const ItemSlide(
      {Key key,
      this.image,
      this.index,
      this.cuttentIndex,
      this.title,
      this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: 0,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        horizontalOffset: 50.0,
        child: FadeInAnimation(
          child: AnimatedPadding(
            duration: Duration(milliseconds: 800),
            curve: Curves.elasticOut,
            padding: EdgeInsets.symmetric(
                horizontal: index == cuttentIndex ? 8 : 25,
                vertical: index == cuttentIndex ? 5 : 20),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    this.image,
                    fit: BoxFit.cover,
                    color: Colors.black38,
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Decoração',
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.oxygen(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        'Descubra tudo sobre decoração...',
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.oxygen(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
