import 'package:flutter/material.dart';
import 'package:vs_code_app/contants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({@required this.buttonText, @required this.onTap});

  final String buttonText;
  final Function onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment:Alignment.center,
        child: Text(
          buttonText,
          style: kBottomButtonText,

        ),
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          color: kBottomContainerButton,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
