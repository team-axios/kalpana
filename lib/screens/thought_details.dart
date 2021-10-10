import 'package:flutter/material.dart';
import 'package:kalpana/theme/font_styling.dart';
import 'package:kalpana/theme/theme.dart';
import 'package:kalpana/widgets/detailedCardView.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(child: DetailedCardView()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          primary: primaryAppColor),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(
                          'Play',
                          style: dPlayStyle,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
