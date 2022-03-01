import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ressengaer_app/constants.dart';
import 'package:ressengaer_app/widgets/my_bottom_navigation_bar.dart';

class ClassiFieds extends StatelessWidget {
  const ClassiFieds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: mYBottomNavigationBar(context),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.push_pin_rounded,
                    color: kLightPink,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Classifieds',
                    style: TextStyle(
                        color: kLightPink,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: kDarkBlue,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: const Center(
                        child: Text(
                      'Post',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('assets/images/wicon.png'),
                    width: 50,
                    height: 50,
                    color: kLightPink,
                  )
                ],
              ),
            ),
            Divider(color: Colors.grey, thickness: 2),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Image(
                image: AssetImage('assets/images/banner.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: <Widget>[
                  Menu('Electronics', FontAwesomeIcons.tv,true),
                  Menu('Home & Garden', FontAwesomeIcons.couch,true),
                  Menu('Automotive Vehicles', Icons.monitor,true),
                  Menu('Baby & Kids', Icons.monitor,true),
                  Menu('Fashion', Icons.monitor,true),
                  Menu('Pets', Icons.monitor,true),
                  Menu('Sports & Leisure', Icons.monitor,true),
                  Menu('Services', Icons.monitor,true),
                  Menu('Lost & Found', Icons.monitor,true),
                  Menu('Charity', Icons.monitor,true),
                  Menu('Community', Icons.monitor,false),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

Widget Menu(String text, IconData icon, bool last) {
  return Column(
    children: [
      RawMaterialButton(
        onPressed: () {},
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  icon,
                  color: kLightPink,
                )),
            // Icon(FaIcon(FontAwesomeIcons.tv),color: kLightPink,),
            SizedBox(
              width: 20,
            ),
            Text(text,
                style: TextStyle(
                    color: kLightPink,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      Visibility(
        visible: last,
          child: Divider(
        color: kLightPink,
        thickness: 2,
        height: 0,
      )),
    ],
  );
}
