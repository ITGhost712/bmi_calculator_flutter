import 'package:flutter/material.dart';
class CardContainer extends StatelessWidget {
  CardContainer(this.x, [this.y=const SizedBox()]);
  final Color x;
  final Widget y;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: y,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: x,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}