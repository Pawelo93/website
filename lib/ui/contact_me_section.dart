import 'package:flutter/material.dart';
import 'package:website/utils/my_colors.dart';

class ContactMeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      color: MyColors.green,
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Contact me!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(
                'pawel2antonik@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}