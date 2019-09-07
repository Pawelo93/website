import 'package:flutter_web/material.dart';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      color: Colors.deepOrangeAccent,
      child: Center(
        child: Text(
          'Contact me!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
