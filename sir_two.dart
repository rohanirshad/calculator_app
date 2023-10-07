import 'package:flutter/material.dart';
import 'package:splash/Sir/sir.dart';

class SofaScreen2 extends StatefulWidget {
  const SofaScreen2({super.key});

  @override
  State<SofaScreen2> createState() => _SofaScreen2State();
}

class _SofaScreen2State extends State<SofaScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xffebf5f5),
          ),
          Container(
            margin: const EdgeInsets.only(top: 600),
            height: 160,
            color: const Color(0xff2f6565),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13)),
                            child: const Icon(
                              Icons.menu,
                              color: Color(0xff2f6565),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13)),
                            child: const Icon(
                              Icons.search,
                              color: Color(0xff2f6565),
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  'Trends',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2f6565)),
                ),
                const Text(
                  'Chair & Cushions',
                  style: TextStyle(fontSize: 20, color: Color(0xff2f6565)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Image(
                    height: 280, image: AssetImage('assets/images/Sofa.png')),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
          const Positioned(
              top: 670,
              left: 40,
              child: Text(
                'Sweet Combo Pack',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )),
          Positioned(
            top: 560,
            left: 130,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Color(0xff2f6565),
                ),
              ),
            ),
          ),
          Positioned(
            top: 690,
            left: 270,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SofaScreen()));
              },
              child: Container(
                height: 80,
                width: 90,
                decoration: const BoxDecoration(
                    color: Color(0xff143f3f),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(25))),
                child: const Center(
                  child: Text(
                    'More',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
