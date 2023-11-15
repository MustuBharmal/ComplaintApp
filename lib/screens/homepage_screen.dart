import 'package:complain_app/screens/complaint_form_screen.dart';
import 'package:complain_app/screens/dept_screen.dart';
import 'package:complain_app/screens/helping_bot.dart';
import 'package:complain_app/widgets/app_drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_provider.dart';
import '../widgets/button_widget.dart';
import 'list_details_screen.dart';

var imageString1 = "assets/images/notification_1.png";
var imageString2 = "assets/images/notification_2.png";
var imageString3 = "assets/images/add_event.png";

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then(
        (_) => Provider.of<UserProvider>(context, listen: false).getUserData());
  }

  @override
  Widget build(BuildContext context) {
    // var query = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(
            Icons.abc,
          ),
          Icon(
            Icons.favorite,
          ),
          Icon(Icons.settings)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.help_center,
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            HelpingBot.routeName,
          );
        },
      ),
      drawer: const AppDrawer(),
      body: Provider.of<UserProvider>(context).userModel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Row(
                  children: [
                    ButtonWidget(
                      imageString1,
                      "Complaint Form",
                      ComplaintFormScreen.routeName,
                    ),
                    Column(
                      children: [
                        titleSection('Complaint Form',
                            'An upcoming event is a\nplanned occurrence that\nis scheduled to take place\nin the near future'),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    ButtonWidget(
                      imageString2,
                      "All Complaints",
                      ListDetailsScreen.routeName,
                    ),
                    titleSection('All Complaints',
                        'A past event is an event\nthat has already happened\n& is no longer in the present\nor future.'),
                  ],
                ),
                Row(
                  children: [
                    ButtonWidget(imageString3, "List of Department",
                        Department.routeName),
                    titleSection('List of Department',
                        'Adding an event is the\nprocess for creating event\nfor participant to register\nin it.'),
                  ],
                ),
              ],
            ),
    );
  }

  Widget titleSection(String title, String description) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            description,
            softWrap: true,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
