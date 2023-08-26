import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon,this.onPressed);

  final IconData icon;
  final VoidCallback onPressed;
  //Note:VoidCallBack is just an another name for void Function()
  //we need to specify the return type of the function , then only the compiler is able to understand , otherwise it throws an error that the specified Variable/Function/Widget/etc is not compatible
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      fillColor: Color.fromARGB(255, 76, 35, 237),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}