import 'package:flutter/material.dart';
import 'package:kalpana/theme/font_styling.dart';

class DetailedCardView extends StatelessWidget {
  const DetailedCardView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'An amazing day';
  String userName = 'Aditi Jain';
  var content =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque quis justo non feugiat. Duis eros arcu, posuere in leo ac, pellentesque convallis velit. Quisque vitae fermentum ante, eu semper magna.Aliquam ac accumsan lectus. Praesentsit amet lacinia dolor, vitae iaculis sem. Nulla ut viverra elit. Proin tempor, urna semper aliquam malesuada, sapien sem lacinia metus, sollicitudin hendrerit elit leo sit amet arcu. In sit amet leo nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque quis justo non feugiat. Duis eros arcu, posuere in leo ac, pellentesque convallis velit. Quisque vitae fermentum ante, eu semper magna.Aliquam ac accumsan lectus. Praesentsit amet lacinia dolor, vitae iaculis sem. Nulla ut viverra elit. Proin tempor, urna semper aliquam malesuada, sapien sem lacinia metus, sollicitudin hendrerit elit leo sit amet arcu. In sit amet leo nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque quis justo non feugiat. Duis eros arcu, posuere in leo ac, pellentesque convallis velit. Quisque vitae fermentum ante, eu semper magna.Aliquam ac accumsan lectus. Praesentsit amet lacinia dolor, vitae iaculis sem. Nulla ut viverra elit. Proin tempor, urna semper aliquam malesuada, sapien sem lacinia metus, sollicitudin hendrerit elit leo sit amet arcu. In sit amet leo nunc.";

    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 30),
                          child: Text(title, softWrap: true,style: dTitleStyle,),
                        ),
                        Padding(
                          padding:const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 30.0),
                          child: Text(content, softWrap: true, style: dContentStyle,),
                        ),
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Text('- '+userName, style: cardDateStyle,)
                          ],
                        ),
                      ),
                      
                      ],
                    ),
                    );
  }
}