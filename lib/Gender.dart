import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Gender extends StatelessWidget {
  Gender([this.x=FontAwesomeIcons.cross,this.y='Nothing']);
  IconData x;
  String y;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          x,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(y, style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8E98),
        ),)
      ],
    );
  }
}