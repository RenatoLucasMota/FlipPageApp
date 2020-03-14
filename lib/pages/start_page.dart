import 'package:flip_pages/widgets/dots_slide.dart';
import 'package:flip_pages/widgets/item_slide.dart';
import 'package:flip_pages/widgets/news_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  PageController _pageController;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 96, 75),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Feather.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Início',
                        style: GoogleFonts.oxygen(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Feather.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Destaques',
                    style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 200,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    children: <Widget>[
                      ItemSlide(
                        index: 0,
                        cuttentIndex: _currentIndex,
                        image:
                            'https://freshome.com/wp-content/uploads/2018/05/color-accessories.jpg',
                      ),
                      ItemSlide(
                        index: 1,
                        cuttentIndex: _currentIndex,
                        image:
                            'https://bulmus.co/wp-content/uploads/2019/04/home-decoration-model6.jpg',
                      ),
                      ItemSlide(
                        index: 2,
                        cuttentIndex: _currentIndex,
                        image:
                            'https://www.yakcarpet.in/wp-content/uploads/2018/02/YAK_sUMMARY.jpg',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                DotsSlide(
                  currentIndex: _currentIndex,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Oque há de novo',
                    style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: AnimationLimiter(
                                      child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        NewsItem(index: 0, image: 'https://img.elo7.com.br/product/zoom/2756855/kit-3-vasos-decorativos-robert-tamanho-grande-vaso-boneco-c-vasos-robert.jpg',),
                        NewsItem(index: 1, image: 'https://a-static.mlcdn.com.br/618x463/conjunto-de-vasos-decorativos-amarelo-sharon-enfeite-sala-casa-conjunto-vasos-sharon-amarelo/artpresentes/008/4aed4cc278f7444a1935403c1f050bbd.jpg',),
                        NewsItem(index: 2, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWXb1KLfPcMUfVEmjBRPZCUtec5uMQBgs2JMIw7hzpaRsAppL1',),
                        NewsItem(index: 3, image: 'https://img.panoramamoveis.com.br/produto/27246/mesa-de-jantar-6-lugares-zouk-com-vidro-preto-11562-ameixa-malta-mobilarte-moveis-105919-cape.jpg',),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
