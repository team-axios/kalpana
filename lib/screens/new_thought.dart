import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalpana/theme/font_styling.dart';
import 'package:kalpana/theme/theme.dart';

class NewThoughtScreen extends StatefulWidget {
  const NewThoughtScreen({Key? key}) : super(key: key);

  @override
  _NewThoughtScreenState createState() => _NewThoughtScreenState();
}

class _NewThoughtScreenState extends State<NewThoughtScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _detailsController = TextEditingController();
  String userName = 'Aditi Jain';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:
            FloatingActionButton.extended(
              backgroundColor: primaryAppColor,
              onPressed: () {}, label: Text('Save'), icon: Icon(
              FontAwesomeIcons.save
            ),),
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
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 30),
                          child: Container(
                            child: TextField(
                              cursorColor: primaryAppColor,
                              controller: _titleController,
                              decoration: InputDecoration(
                                hintText: "Title",
                                hintStyle: kHintStyle,
                                focusColor: primaryAppColor,
                                fillColor: primaryAppColor,
                                hoverColor: primaryAppColor,
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primaryAppColor),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() => {});
                              },
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                bottom: BorderSide(
                                    width: 2,
                                    color: primaryAppColor,
                                    style: BorderStyle.solid),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 30),
                            child: Container(
                              decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(),
                              ),
                            
                              child: Align(
                                alignment: Alignment.topRight,
                                child: TextField(
                                  maxLines: null,
                                  expands: true,
                                  cursorColor: primaryAppColor,
                                  controller: _detailsController,
                                  decoration: InputDecoration(
                                    hintText: "Write something...",
                                    hintStyle: kHintStyle,
                                    focusColor: primaryAppColor,
                                    fillColor: primaryAppColor,
                                    hoverColor: primaryAppColor,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: primaryAppColor),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: primaryAppColor),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: primaryAppColor),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: primaryAppColor),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() => {});
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
    
                        
                     
                      ],
                    )),
              ),
                 SizedBox(height: 70.0)
            ],
          ),
        ),
      ),
    );
  }
}
