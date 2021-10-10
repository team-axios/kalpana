import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalpana/screens/thought_details.dart';
import 'package:kalpana/theme/font_styling.dart';
import 'package:kalpana/theme/theme.dart';
import 'package:kalpana/widgets/cardView.dart';

import 'new_thought.dart';

import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  getThoughts() async {
    http.Response response = await http.get(
      Uri.parse("http://34.212.225.15:8000/")
    );
    Map<String, dynamic> responseFromAPI = json.decode(response.body.toString());
    return responseFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryAppColor,
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewThoughtScreen())),
        child: Icon(
          FontAwesomeIcons.penAlt,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              FutureBuilder(
                future: getThoughts(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  if(snapshot.connectionState == ConnectionState.done || snapshot.connectionState == ConnectionState.active){
                    if(snapshot.data == null){
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.65,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: CircularProgressIndicator()
                        )
                      );
                    } else {
                      List ls = List.from(snapshot.data["message"]);
                      List<Widget> els = [];
                      for(int index = 0; index < ls.length; index++){
                        Widget cardView = CardView(
                          title: ls[index]["title"],
                          details: ls[index]["details"],
                          url: ls[index]["url"]
                        );
                        els.add(cardView);
                      }
                      return Column(
                        children: els
                      );
                    }
                  } else {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: CircularProgressIndicator()
                      )
                    );
                  }
                }
              ),
              SizedBox(
                height: 54,
              )
              // Expanded(
              //   child: Container(
              //     child: ListView.builder(
              //         scrollDirection: Axis.vertical,
              //         shrinkWrap: true,
              //         itemCount: 2,
              //         itemBuilder: (context, index) {
              //           return InkWell(
              //               onTap: () => Navigator.of(context)
              //                       .push(MaterialPageRoute(builder: (context) {
              //                     return DetailScreen();
              //                   })),
              //               child: CardView());
              //         }),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
