import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title ;
  final Color color;
  final VoidCallback onPress;
  const MyButton({super.key,
    required this.title,
    this.color = Colors.grey,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(child: Text(title,style: TextStyle(color: Colors.white, fontSize: 23),)),
          ),
        ),
      ),
    );
  }
}
