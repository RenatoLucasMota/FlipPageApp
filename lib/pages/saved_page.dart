import 'package:flip_pages/widgets/item_saved.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top,
            ), 
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
                      Feather.list,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Salvos',
                    style: GoogleFonts.oxygen(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oxygen(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  ItemSaved(
                    image:
                        'https://img.elo7.com.br/product/zoom/2756855/kit-3-vasos-decorativos-robert-tamanho-grande-vaso-boneco-c-vasos-robert.jpg',
                  ),
                  ItemSaved(
                    image:
                        'https://a-static.mlcdn.com.br/618x463/conjunto-de-vasos-decorativos-amarelo-sharon-enfeite-sala-casa-conjunto-vasos-sharon-amarelo/artpresentes/008/4aed4cc278f7444a1935403c1f050bbd.jpg',
                  ),
                  ItemSaved(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWXb1KLfPcMUfVEmjBRPZCUtec5uMQBgs2JMIw7hzpaRsAppL1',
                  ),
                  ItemSaved(
                    image:
                        'https://img.panoramamoveis.com.br/produto/27246/mesa-de-jantar-6-lugares-zouk-com-vidro-preto-11562-ameixa-malta-mobilarte-moveis-105919-cape.jpg',
                  ),
                  ItemSaved(
                    image:
                        'https://img.elo7.com.br/product/zoom/2756855/kit-3-vasos-decorativos-robert-tamanho-grande-vaso-boneco-c-vasos-robert.jpg',
                  ),
                  ItemSaved(
                    image:
                        'https://a-static.mlcdn.com.br/618x463/conjunto-de-vasos-decorativos-amarelo-sharon-enfeite-sala-casa-conjunto-vasos-sharon-amarelo/artpresentes/008/4aed4cc278f7444a1935403c1f050bbd.jpg',
                  ),
                  ItemSaved(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWXb1KLfPcMUfVEmjBRPZCUtec5uMQBgs2JMIw7hzpaRsAppL1',
                  ),
                  ItemSaved(
                    image:
                        'https://img.panoramamoveis.com.br/produto/27246/mesa-de-jantar-6-lugares-zouk-com-vidro-preto-11562-ameixa-malta-mobilarte-moveis-105919-cape.jpg',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
