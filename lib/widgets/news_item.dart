import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsItem extends StatelessWidget {
  final String image;
  final int index;

  const NewsItem({Key key, this.image, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        horizontalOffset: 50.0,
        child: FadeInAnimation(
          child: GestureDetector(
            child: AnimatedPadding(
              duration: Duration(milliseconds: 300),
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 140,
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Icon(
                            Feather.bookmark,
                            size: 12,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Itens decorativos',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.oxygen(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black87),
                        ),
                        Text(
                          'R\$ 59,00',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.oxygen(
                              fontSize: 12, color: Colors.black87),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
