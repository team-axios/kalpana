import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalpana/screens/thought_details.dart';
import 'package:kalpana/theme/font_styling.dart';
import 'package:kalpana/theme/theme.dart';
import 'package:kalpana/widgets/cardView.dart';

import 'new_thought.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryAppColor,
        onPressed: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return NewThoughtScreen();
        })),
        child: Icon(
          FontAwesomeIcons.penAlt,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23.0, bottom: 20),
              child: Text(
                'Kalpana',
                softWrap: true,
                style: appTitleStyle,
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () => Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DetailScreen();
                              })),
                          child: CardView());
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
