import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colourOfContainer, this.onPress, this.cardChild}); //wrapped the property to make it optional

  final Color? colourOfContainer;
  final Widget? cardChild;
  final VoidCallback? onPress;//added question mark to make it optional

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colourOfContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}