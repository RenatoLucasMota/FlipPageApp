import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSaved extends StatelessWidget {
  final String image;
  final int index;

  const ItemSaved({Key key, this.image, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        verticalOffset: 50.0,
        child: FadeInAnimation(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
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
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      Text(
                        'R\$ 59,00',
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.oxygen(
                            fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Feather.plus,
                          color: Colors.white,
                          size: 18,
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 232, 96, 75),
                            borderRadius: BorderRadius.circular(8)),
                        height: 35,
                        width: 35,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Icon(
                          Feather.trash,
                          color: Colors.white,
                          size: 18,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(8)),
                        height: 35,
                        width: 35,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
