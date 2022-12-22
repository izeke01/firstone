import 'package:flutter/material.dart';
import 'package:isaac1/navprofwidget.dart';
import 'package:isaac1/proofilewidget.dart';
import 'package:isaac1/user_preferences.dart';
import 'draweritem.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: 'People',
                icon: Icons.people,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'My Account',
                icon: Icons.account_box_rounded,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Chats',
                icon: Icons.message_outlined,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Favourites',
                icon: Icons.favorite_outline,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Setting',
                icon: Icons.settings,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Log out',
                icon: Icons.logout,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerWidget() {
    final user = UserPreferences.getUser();
    return Row(
      children: [
        CircleAvatar(
            radius: 40,
            child: NavProf(imagePath: user.imagePath, onClicked: () {})),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
