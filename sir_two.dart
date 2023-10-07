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
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 800,
              color: Color(0xffebf5f5),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(top: 800),
              color: Color(0xff2f6565),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 55,
                        width: 55,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xff2f6565),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: 55,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff2f6565),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Trends',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2f6565),
                  ),
                ),
                Text(
                  'Chairs & Cushions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2f6565),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/Sofa.png'),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SofaScreen()));
              },
              child: Positioned(
                bottom: 100,
                left: 180,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Color(0xff2f6565),
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 40,
              child: Text(
                'Sweet Combo Pack',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xff184040),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
                ),
                child: Center(
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
