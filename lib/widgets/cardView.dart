import 'package:flutter/material.dart';
import 'package:kalpana/theme/font_styling.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalpana/theme/icon_styling.dart';
import 'package:kalpana/theme/theme.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  var title = 'An amazing day';
  var date = '30 March';
  var content =
      "I woke up, ate breakfast and cleaned myself. I think I need to take Bobby to the vet tomorrow before I go to work. Maybe I should also take him to the groomer...";

  var isProcessed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Color.fromRGBO(0, 0, 0, 0.8),
        elevation: 4,
        child: SizedBox(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, left: 28, bottom: 25.0),
                    child: Text(
                      title,
                      style: cardTitleStyle,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, right: 28, bottom: 25.0),
                    child: Icon(
                      FontAwesomeIcons.pencilAlt,
                      size: pencilIconSize,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Text(
                      date,
                      softWrap: true,
                      style: cardDateStyle,
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
                child: Text(
                  content,
                  softWrap: true,
                  style: cardContentStyle,
                ),
              ),
              isProcessed == true
                  ? Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                primary: primaryAppColor),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text('Play'),
                            )),
                        Spacer()
                      ]),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Processing',
                            style: cardProcesStyle,
                          )
                        ],
                      ),
                    ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
