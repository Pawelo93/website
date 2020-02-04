import 'package:flutter/material.dart';
import 'package:website/utils/my_colors.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        NameRow(),
        DetailsRow(),
      ],
    );
  }
}

class NameRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/avatar.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello I'm",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: MyColors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  'Paweł Antonik',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  'Mobile developer',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class DetailsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        width: 350,
        child: Text(
          'Have been programming for 8 years. I work as android dev for 6 years now and Flutter makes me happy for more than a year!        I also love heavy music and racing.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
    ;
  }
}
