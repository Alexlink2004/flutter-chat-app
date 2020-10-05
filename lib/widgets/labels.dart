import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String title;
  final String rutaTitle;

  const Labels({
    @required this.ruta,
    @required this.title,
    @required this.rutaTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(
            context,
            ruta,
          ),
          child: Text(
            rutaTitle,
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
