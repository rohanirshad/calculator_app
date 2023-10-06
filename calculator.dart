import 'package:calculator/components/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '';
  var r = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Align(alignment: Alignment.center,),
                    Text(userInput.toString(), style: const TextStyle(fontSize: 30,color: Colors.white),),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(answer.toString(), style: const TextStyle(fontSize: 30,color: Colors.white),),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(title: 'AC',onPress: (){
                        userInput = '';
                        setState(() {

                        });
                      },),
                      MyButton(title: '+/-',onPress: (){
                        userInput += '+/-';
                        setState(() {

                        });
                      }),
                      MyButton(title: '%',onPress: (){
                        userInput += '%';
                        setState(() {

                        });
                      }),
                      MyButton(title: '/',onPress: (){
                        userInput += '/';
                        setState(() {

                        });
                      }, color: Colors.orange,),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '7',onPress: (){
                        userInput += '7';
                        setState(() {

                        });
                      },),
                      MyButton(title: '8',onPress: (){
                        userInput += '8';
                        setState(() {

                        });
                      }),
                      MyButton(title: '9',onPress: (){

                        userInput += '9';
                        setState(() {

                        });
                      }),
                      MyButton(title: 'x',onPress: (){
                        userInput += 'x';
                        setState(() {

                        });
                      }, color: Colors.orange,),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '4',onPress: (){
                        userInput += '4';
                        setState(() {

                        });
                      },),
                      MyButton(title: '5',onPress: (){
                        userInput += '5';
                        setState(() {

                        });
                      }),
                      MyButton(title: '6',onPress: (){
                        userInput += '6';
                        setState(() {

                        });
                      }),
                      MyButton(title: '-',onPress: (){
                        userInput += '-';
                        setState(() {

                        });
                      }, color: Colors.orange,),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '1',onPress: (){
                        userInput += '1';
                        setState(() {

                        });
                      },),
                      MyButton(title: '2',onPress: (){
                        userInput += '2';
                        setState(() {

                        });
                      }),
                      MyButton(title: '3',onPress: (){
                        userInput += '3';
                        setState(() {

                        });
                      }),
                      MyButton(title: '+',onPress: (){
                        userInput += '+';
                        setState(() {

                        });
                      }, color: Colors.orange,),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '0',onPress: (){
                        userInput += '0';
                        setState(() {

                        });
                      },),
                      MyButton(title: '.',onPress: (){
                        userInput += '.';
                        setState(() {

                        });
                      }),
                      MyButton(title: 'DEL',onPress: (){
                        userInput = userInput.substring(0 , userInput.length - 1);
                        setState(() {

                        });
                      }),
                      MyButton(title: '=',onPress: (){
                        equalPress();
                        print(answer);
                        setState(() {
                          userInput = r;
                        });
                      }, color: Colors.orange,),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      )
    ));
  }


  void equalPress(){
    String finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
    r = answer;
  }
}
