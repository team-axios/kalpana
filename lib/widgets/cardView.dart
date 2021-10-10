import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayer/audioplayer.dart';

import 'package:kalpana/theme/font_styling.dart';
import 'package:kalpana/theme/icon_styling.dart';
import 'package:kalpana/theme/theme.dart';

class CardView extends StatefulWidget {
  const CardView(
      {Key? key, required this.title, required this.details, required this.url})
      : super(key: key);
  final String title, details, url;

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  var date = '30 March';

  bool isPlaying = false;
  AudioPlayer audioPlugin = AudioPlayer();

  togglePlaying(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Fetching tone from cloud, this might take some time"
        ),
      )
    );
    if(!isPlaying){
      audioPlugin.play(widget.url);
    } else {
      audioPlugin.stop();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

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
                      widget.title,
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
                  widget.details.substring(0, widget.details.length < 150 ? widget.details.length - 1 : 150) + "...",
                  softWrap: true,
                  style: cardContentStyle,
                ),
              ),
              widget.url.length != 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                primary: primaryAppColor),
                            onPressed: () => togglePlaying(),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                'Play',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white
                                )
                              ),
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
