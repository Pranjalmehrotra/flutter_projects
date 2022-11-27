/// This is the second method of UI implementation using Card and List Tile Widgets
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/util/utilities.dart';

import '../Icons/icon_content.dart';

class ListTileWidgetChallenge extends StatelessWidget {
  const ListTileWidgetChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    //final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: kImageContainerColour,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// For getting image inside the circular avatar, always insert the image in backgroundImage of Circular avator.

              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  'images/Passport pic.jpg',
                ),
                /*child: Image(
                  image: AssetImage(
                    'images/Passport pic.jpg',
                  ),
                ),*/
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Pranjal Mehrotra',
                    style: kNameTextStyle,
                  )),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'FLUTTER DEVELOPER',
                  style: kDesignationTextStyle,
                ),
              ),

              /// This Divider is used to bring the line in between the FLUTTER DEVELOPER AND 7355969644

              const SizedBox(
                width: 300,
                //width: //MediaQuery.of(context).size.width * .8,
                child: Divider(
                  color: kNameTextStyleColor,
                  thickness: 1,
                ),
              ),

              /// Card has no padding property.So we have to wrap inside the Padding widget.
              const Card(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                child: ListTile(
                  /*leading: Icon(
                    Icons.phone,
                    color: kPhoneIconColor,
                  ),*/
                  leading: IconContent(
                    icon: Icons.phone,
                    color: kPhoneIconColor,
                  ),
                  title: Text(
                    '7355969644',
                    style: kPhoneNumberAndEmailTextStyle,
                  ),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                child: ListTile(
                  leading: IconContent(
                    icon: Icons.email,
                    color: kPhoneIconColor,
                  ),
                  title: Text(
                    'pranjalmehrotra213@gmail.com',
                    style: kPhoneNumberAndEmailTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
