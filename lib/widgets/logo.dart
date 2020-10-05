import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  final String titulo;

  const Logo({this.titulo = 'Messenger'});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image.asset('assets/tag-logo.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              titulo,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
