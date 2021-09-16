import 'package:flutter/material.dart';
import 'package:riddhasoft_utils/components/button/buttons.dart';
import 'package:riddhasoft_utils/screens/Buttons/index.dart';
import 'package:riddhasoft_utils/screens/Forms/index.dart';
import 'package:riddhasoft_utils/screens/bottomappbar/index.dart';
import 'package:riddhasoft_utils/screens/cards/index.dart';
import 'package:riddhasoft_utils/screens/imagepicker/index.dart';
import 'package:riddhasoft_utils/screens/introductionscreen/introscreen.dart';
import 'package:riddhasoft_utils/screens/loader/index.dart';
import 'package:riddhasoft_utils/screens/login/index.dart';
import 'package:riddhasoft_utils/screens/map/index.dart';
import 'package:riddhasoft_utils/screens/signup/index.dart';

Drawer drawerAppWidget(
  context,
) {
  return Drawer(
      elevation: 4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            drawerItemList(context),
            ButtonWidget(
              title: 'Logout',
              pressed: () async {},
              radius: 15.0,
              btnIcon: Icons.logout,
            )
          ],
        ),
      ));
}

ListView drawerItemList(context) {
  return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: utilsItems.length,
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            child: ListTile(
              leading: Icon(
                utilsItems[index].icon,
              ),
              title: Text(
                utilsItems[index].title,
              ),
            ),
          ),
        );
      });
}

class ListItem {
  ListItem(this.title, this.isSelected, this.icon, this.iconColor, this.screen);
  String title;
  bool isSelected;
  IconData icon;
  Color iconColor;
  var screen;
}

List<ListItem> utilsItems = [
  ListItem('Cards', true, Icons.card_giftcard, Colors.black, CardsScreen()),
  ListItem('Forms', true, Icons.settings, Colors.black, FormScreen()),
  ListItem('Bottom App Bar', true, Icons.navigation, Colors.black,
      BottomAppBarScreen()),
  ListItem(
      'Buttons', true, Icons.smart_button_sharp, Colors.black, ButtonScreen()),
  ListItem('Modal', true, Icons.model_training, Colors.black, () {}),
  ListItem('Grid Builder', true, Icons.grid_3x3, Colors.black, () {}),
  ListItem('List Builder', true, Icons.list, Colors.black, () {}),
  ListItem('Login Form', true, Icons.login, Colors.black, LoginScreen()),
  ListItem('Signup Form', true, Icons.add, Colors.black, SignupScreen()),
  ListItem('Introduction Screen', true, Icons.slideshow, Colors.black, IntroductinScreen()),
  ListItem('Map', true, Icons.map, Colors.black, MapScreen()),
  ListItem('Loaders', true, Icons.refresh, Colors.black, LoaderScreen()),
  ListItem(
      'Image Picker', true, Icons.image, Colors.black, ImagePickerScreen()),
];
