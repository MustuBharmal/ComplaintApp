
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/global_variables.dart';
import '../provider/user_provider.dart';
import '../screens/list_details_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: scaffoldBackgroundColor,
      child: Column(
        children: [
          AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset('assets/images/profileImg.png'),
            ),
            toolbarHeight: 100,
            title: Text(
              Provider.of<UserProvider>(context).userModel!.name!.toUpperCase(),
            ),
            elevation: 100,
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.account_balance,
                ),
                title: const Text('Pending Complaints'),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    arguments: 'pending',
                    ListDetailsScreen.routeName,
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.account_balance,
                ),
                title: const Text('Processing Complaints'),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.account_balance,
                ),
                title: const Text('Resolved Complaints'),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    arguments: 'resolved',
                    ListDetailsScreen.routeName,
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text('Logout'),
                onTap: () {
                  Provider.of<UserProvider>(context,listen: false,).logout();
                },
              ),
              const Divider(),
            ],
          )
        ],
      ),
    );
  }
}
