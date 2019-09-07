import 'package:flutter_web/material.dart';

class MenuWidget extends StatefulWidget {
  final AnimationController controller;
  final Function(bool) openHomeScreen;
  final Function(bool) scrollToContact;

  const MenuWidget(
      {Key key,
      @required this.controller,
      this.openHomeScreen,
      this.scrollToContact})
      : super(key: key);

  @override
  _MenuWidgetState createState() =>
      _MenuWidgetState(controller, openHomeScreen, scrollToContact);
}

class _MenuWidgetState extends State<MenuWidget>
    with SingleTickerProviderStateMixin {
  final AnimationController controller;
  Animation<double> animation;
  final Function(bool) openHomeScreen;
  final Function(bool) scrollToContact;

  _MenuWidgetState(this.controller, this.openHomeScreen, this.scrollToContact);

  @override
  void initState() {
    final Animation curve = CurvedAnimation(
        parent: controller, curve: Curves.ease, reverseCurve: Curves.easeOut);
    animation = Tween(begin: 0.0, end: 1.0).animate(curve);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, 170.0 * animation.value),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          menuItem('Home', openHomeScreen),
          menuItem('Contact', scrollToContact),
        ],
      ),
    );
  }

  Widget menuItem(String name, Function(bool) callback) {
    return GestureDetector(
      onTap: () => callback(true),
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24.0, bottom: 16.0),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
