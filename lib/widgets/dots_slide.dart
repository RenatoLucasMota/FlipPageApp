import 'package:flutter/material.dart';

class DotsSlide extends StatelessWidget {
  final int currentIndex;

  const DotsSlide({Key key, this.currentIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          width: 0 == currentIndex ? 8 : 5,
          height: 0 == currentIndex ? 8 : 5,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: 0 == currentIndex
                  ? Color.fromARGB(255, 232, 96, 75)
                  : Colors.grey),
        ),
        SizedBox(width: 10,),
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          width: 1 == currentIndex ? 8 : 5,
          height: 1 == currentIndex ? 8 : 5,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: 1 == currentIndex
                  ? Color.fromARGB(255, 232, 96, 75)
                  : Colors.grey),
        ),
        SizedBox(width: 10,),
        AnimatedContainer(
          duration: Duration(milliseconds: 400),
          width: 2 == currentIndex ? 8 : 5,
          height: 2 == currentIndex ? 8 : 5,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: 2 == currentIndex
                  ? Color.fromARGB(255, 232, 96, 75)
                  : Colors.grey),
        )
      ],
    );
  }
}
