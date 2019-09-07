import 'package:flutter_web/material.dart';

class PresentationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 72.0, left: 48.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          nameRow(),
          detailsRow(),
        ],
      ),
    );
  }

  Widget nameRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('avatar.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Paweł Antonik',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  'Android developer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget detailsRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        'I am a multidisciplinary designer with an active interest in entire design spectrum and product thinking. Learning how to create app in flutter.',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
