import 'package:flutter/material.dart';
import 'package:website/ui/phone_section/menu_widget.dart';

class PhoneSection extends StatelessWidget {
  final Function(bool) scrollToContact;

  PhoneSection(this.scrollToContact);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image(
          width: 240,
          height: 500,
          image: AssetImage('mocup.png'),
        ),
        Positioned(
          width: 310,
          height: 635,
          child: Transform.translate(
            offset: Offset(-35.0, -68.0),
            child: Transform.scale(
              scale: 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: CustomDrawerApp(scrollToContact),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomDrawerApp extends StatefulWidget {
  final Function(bool) scrollToContact;

  CustomDrawerApp(this.scrollToContact);

  @override
  _CustomDrawerAppState createState() => _CustomDrawerAppState(scrollToContact);
}

class _CustomDrawerAppState extends State<CustomDrawerApp>
    with TickerProviderStateMixin {
  AnimationController menuController;
  AnimationController controller;
  Animation<double> animation;

  final Function(bool) scrollToContact;

  _CustomDrawerAppState(this.scrollToContact);

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    menuController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xff2c2c54),
        ),
        MenuWidget(
          controller: menuController,
          openHomeScreen: (flag) => toggleMenuIcon(),
          scrollToContact: scrollToContact,
        ),
        Transform.translate(
          offset: Offset(120 * animation.value, 0),
          child: Transform.scale(
            scale: 1.0 - (0.1 * animation.value),
            child: scaffold(),
          ),
        ),
      ],
    );
  }

  Widget scaffold() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(42.0),
          child: AppBar(
            backgroundColor: Color(0xFF474787),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => toggleMenuIcon(),
            ),
            title: Text('Flutter App'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  toggleMenuIcon() {
    setState(() {
      if (controller.isCompleted) {
        controller.reverse();
        menuController.reverse();
      } else {
        menuController.forward();
        controller.forward();
      }
    });
  }
}
