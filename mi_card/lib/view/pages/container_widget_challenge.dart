/// This is the first method of UI implementation using Container Widget
import 'package:flutter/material.dart';

import '../../util/utilities.dart';
import '../Icons/icon_content.dart';

class ContainerWidgetChallenge extends StatelessWidget {
  const ContainerWidgetChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: kImageContainerColour,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Image(
                  image: AssetImage('images/Passport pic.jpg'),
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text('Pranjal Mehrotra', style: kNameTextStyle)),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text('FLUTTER DEVELOPER',
                    style: kDesignationTextStyle),
              ),

              /// This Divider is used to bring the line in between the FLUTTER DEVELOPER AND 7355969644

              const SizedBox(
                width: 300,
                child: Divider(
                  color: kNameTextStyleColor,
                  thickness: 1,
                ),
              ),
              Container(
                color: kNameTextStyleColor,
                //width: 360,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                //margin: const EdgeInsets.only(left: 0, right: 0, top: 15),
                child: Row(
                  children: const [
                    IconContent(
                      icon: Icons.phone,
                      color: kPhoneIconColor,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text('7355969644', style: kPhoneNumberAndEmailTextStyle),
                  ],
                ),
              ),
              Container(
                //padding: EdgeInsets.all(10),
                color: kNameTextStyleColor,
                margin: const EdgeInsets.all(15),
                padding: EdgeInsets.all(10),

                child: Row(
                  children: const [
                    IconContent(
                      icon: Icons.email,
                      color: kPhoneIconColor,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text('pranjalmehrotra213@gmail.com',
                        style: kPhoneNumberAndEmailTextStyle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
