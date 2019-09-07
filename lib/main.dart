import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:website/contact_widget.dart';
import 'package:website/custom_drawer/presentation_widget.dart';

import 'custom_drawer/custom_drawer_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Material(
        child: ListView(
          controller: _scrollController,
          children: [
            Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    presentationWidget(context),
                    appWidget(),
                  ],
                ),
                ContactWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget presentationWidget(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: PresentationWidget(),
      ),
    );
  }

  Widget appWidget() {
    return Expanded(
      flex: 1,
      child: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 68),
              child: SizedBox(
                height: 502,
                child: Image.asset('mocup.png'),
              ),
            ),
            Container(
              child: SizedBox(
                width: 313,
                height: 636,
                child: Transform.scale(
                  scale: 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: CustomDrawerApp(
                      (flag) => _scrollController.animateTo(
                        400.0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
