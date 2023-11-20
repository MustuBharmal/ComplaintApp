import 'package:complain_app/global_string.dart';
import 'package:complain_app/screens/complaint_form_screen.dart';
import 'package:complain_app/screens/dept_screen.dart';
import 'package:complain_app/screens/helping_bot.dart';
import 'package:complain_app/widgets/app_drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'ગુજરાતી', 'locale': const Locale('gu', 'IN')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: const Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // var query = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text('Home Screen'.tr),
        actions: [
          IconButton(
              onPressed: () {
                buildLanguageDialog(context);
              },
              icon: Icon(Icons.language_outlined))
        ],
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
                      title1.tr,
                      ComplaintFormScreen.routeName,
                    ),
                    Column(
                      children: [
                        titleSection(title1.tr, desc1.tr),
                        //('Complaint Form','An upcoming event is a\nplanned occurrence that\nis scheduled to take place\nin the near future')
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    ButtonWidget(
                      imageString2,
                      title2.tr,
                      ListDetailsScreen.routeName,
                    ),
                    titleSection(title2.tr, desc2.tr),
                    //('All Complaints','A past event is an event\nthat has already happened\n& is no longer in the present\nor future.'),
                  ],
                ),
                Row(
                  children: [
                    ButtonWidget(imageString3, title3.tr, Department.routeName),
                    titleSection(title3.tr, desc3.tr),
                    //('List of Department','Adding an event is the\nprocess for creating event\nfor participant to register\nin it.'),
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
