import 'package:flutter/material.dart';
import 'package:website/ui/articles_section.dart';
import 'package:website/ui/contact_me_section.dart';
import 'package:website/ui/description_section.dart';
import 'package:website/ui/phone_section.dart';

class ApplicationLayout extends StatefulWidget {
  @override
  _ApplicationLayoutState createState() => _ApplicationLayoutState();
}

class _ApplicationLayoutState extends State<ApplicationLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0),
                    child: DescriptionSection(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 72.0, top: 72.0, left: 48.0),
                    child: ArticlesSection(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      PhoneSection(_scroll),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ContactMeSection(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _scroll(bool scroll) {
    _scrollController.animateTo(
      600.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
