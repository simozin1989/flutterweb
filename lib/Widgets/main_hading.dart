import 'package:flutter/material.dart';

class MainHading extends StatelessWidget {
  const MainHading({Key? key, required this.screenSize}) : super(key: key);
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: screenSize.height / 10, bottom: screenSize.height / 15),
      width: screenSize.width,
      child: const Text(
        "KnowLege diversity",
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
