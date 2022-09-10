import 'package:buy_tickets/screens/login/zaad_tickts_login_screen.dart';
import 'package:flutter/material.dart';

import '../../data/user_model.dart';
import '../../data/util_user.dart';
import '../../shered/components/components.dart';
import '../../shered/widgets/botton_wdget.dart';
import '../../shered/widgets/profile_widget.dart';

class ProphiletScreen extends StatelessWidget {
  const ProphiletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 30,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          const SizedBox(height: 48),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Les paramètres'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Qui sommes Nous'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Contactez-nous'),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Déconnecter'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => navigatTo(context, ZaadTicktsLoginScreen()),
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );
}
