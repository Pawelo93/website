import 'package:flutter/material.dart';
import 'package:website/ui/articles_section.dart';
import 'package:website/ui/background.dart';
import 'package:website/ui/contact_me_section.dart';
import 'package:website/ui/description_section.dart';
import 'package:website/ui/phone_section.dart';

class WebsiteLayout extends StatefulWidget {
  @override
  _WebsiteLayoutState createState() => _WebsiteLayoutState();
}

class _WebsiteLayoutState extends State<WebsiteLayout> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Background(),
        ListView(
          controller: _scrollController,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 72.0, left: 48.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DescriptionSection(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 72.0),
                          child: ArticlesSection(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 96.0, bottom: 24.0),
                    child: PhoneSection(_scroll),
                  ),
                ],
              ),
            ),
            ContactMeSection(),
          ],
        ),
      ],
    );
  }

  void _scroll(bool scroll) {
    _scrollController.animateTo(
      400.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
