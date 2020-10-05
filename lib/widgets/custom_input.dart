import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    @required this.icon,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    @required this.placeHolder,
    @required this.textController,
  });

  final IconData icon;
  final String placeHolder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(
        top: 5,
        left: 5,
        bottom: 5,
        right: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, 5),
              blurRadius: 5,
            )
          ]),
      child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: keyboardType,
        obscureText: false,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          border: InputBorder.none,
          hintText: placeHolder,
        ),
      ),
    );
  }
}
