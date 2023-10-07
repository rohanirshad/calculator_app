import 'package:flutter/material.dart';
import 'package:splash/Sir/sir_two.dart';

class SofaScreen extends StatefulWidget {
  const SofaScreen({super.key});

  @override
  State<SofaScreen> createState() => _SofaScreenState();
}

class _SofaScreenState extends State<SofaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/back.png'),
          SafeArea(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 55,
                          width: 55,
                          child: Card(
                            color: Color(0xffebf5f5),
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.navigate_before,
                              color: Color(0xff2f6565),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 260),
                  decoration: BoxDecoration(
                    color: Color(0xffebf5f5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 600,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Image.asset('assets/images/Sofa.png', scale: 1.6),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 460, left: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 2, color: Color(0xff2f6565))),
                            child: Icon(
                              Icons.attach_money,
                              color: Color(0xff2f6565),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Trends Chairs & Cushions',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff2f6565)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 200, // Set the width of the container
                        height: 80,
                        child: Text(
                          "Total relaxation is the secret to enjoying sitting meditation. I sit with my spine upright but not rigid and I relax all the muscles in my body.",
                          style:
                              TextStyle(color: Color(0xff2f6565), height: 1.4),
                          softWrap: true, // Enable text wrapping
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 500, left: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 2, color: Color(0xff2f6565))),
                            child: Icon(
                              Icons.highlight_outlined,
                              color: Color(0xff2f6565),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff2f6565)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            '499',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color(0xff2f6565)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 21, 90, 90),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text('Buy Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
