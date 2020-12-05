import 'package:flutter/material.dart';
import 'package:vs_code_app/contants.dart';


class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      child: Icon(icon, color: Colors.white,),
      shape: CircleBorder(),
      fillColor: kInactiveCardColor,
    );
  }
}
