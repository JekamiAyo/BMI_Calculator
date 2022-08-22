import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPresse;
  RoundIconButton({this.icon, this.onPresse});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      //this is from gotten from digging through flutter, to find how floating actionButtons are created
      onPressed: onPresse,
      elevation: 0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}

//Let's create our own button i.e custom widget from scratch rather than customizing predefined widgets

//this would make our icons have a rounded rectangle shape
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)))
