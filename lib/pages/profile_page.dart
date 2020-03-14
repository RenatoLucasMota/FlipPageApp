import 'package:flip_pages/widgets/item_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).viewPadding.top),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
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
                            Feather.settings,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Pefil',
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
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.network(
                              'https://media-exp1.licdn.com/dms/image/C4D03AQF5iKNNG2izrg/profile-displayphoto-shrink_200_200/0?e=1589414400&v=beta&t=0d3bCo3K6_w22v5tNXmoh22RhbV7KL5Yaki89hy1e8Y')
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Renato Mota',
                        style: GoogleFonts.oxygen(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Editar Perfil',
                        style: GoogleFonts.oxygen(
                            color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                ItemProfile(
                  icon: Feather.shopping_cart,
                  color: Colors.blue[300],
                  text: 'Meus Pedidos',
                ),
                ItemProfile(
                  icon: Feather.credit_card,
                  color: Colors.orange[300],
                  text: 'Minha Carteira',
                ),
                ItemProfile(
                  icon: Feather.map,
                  color: Colors.pink[300],
                  text: 'Meus Endereços',
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
