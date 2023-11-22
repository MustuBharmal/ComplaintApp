import 'package:complain_app/global_string.dart';
import 'package:complain_app/provider/user_provider.dart';
import 'package:complain_app/screens/add_complaint_screen.dart';
import 'package:complain_app/screens/dept_screen.dart';
import 'package:complain_app/screens/helping_bot.dart';
import 'package:complain_app/screens/your_complaint_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<String> getNumberOfUsers() async {
    // String numberOfUsers='N';
    return '6';
    // return await dbReference.child('users').once().then(
    //       (value) {
    //     var data = value.snapshot.value;
    //
    //     String numberOfUsers =
    //     Map<String, dynamic>.from(data as Map<Object?, Object?>)
    //         .length
    //         .toString();
    //
    //     return numberOfUsers;
    //   },
    // );
  }

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
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          // print(locale[index]['name']);
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
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Provider.of<UserProvider>(context).userModel == null
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                welcome.tr,
                                style:const  TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                Provider.of<UserProvider>(context)
                                    .userModel!
                                    .name!,
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Provider.of<UserProvider>(context, listen: false)
                                  .logout();
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.03),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Center(
                                child: Icon(LineIcons.alternateSignOut),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 145,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: ThemeColor.shadow,
                                blurRadius: 100,
                                spreadRadius: 5,
                                offset: Offset(0, 25)),
                          ],
                          borderRadius: BorderRadius.circular(30),
                          color: ThemeColor.primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Flexible(
                                child: SizedBox(
                                  width: (deviceSize.width),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        departments.tr,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: ThemeColor.white),
                                      ),
                                      Text(
                                        subOffices.tr,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: ThemeColor.white),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, Department.routeName);
                                        },
                                        child: Container(
                                          width: deviceSize.width / 3,
                                          height: deviceSize.height / 18,
                                          decoration: BoxDecoration(
                                              color: ThemeColor.secondary,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              viewDepartments.tr,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  color: ThemeColor.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ThemeColor.secondary),
                                child: Center(
                                  child: FutureBuilder(
                                    future: getNumberOfUsers(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot snapshot) {
                                      if (snapshot.hasData) {
                                        return Text(
                                          snapshot.data,
                                          style: const TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: ThemeColor.white),
                                        );
                                      } else {
                                        return const CircularProgressIndicator();
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: ThemeColor.shadow,
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(0, 10)),
                            ],
                            color: ThemeColor.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                registerComplaint.tr,
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: ThemeColor.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, AddComplaints.routeName);
                                },
                                child: Container(
                                  width: 70,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: ThemeColor.secondary,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Icon(LineIcons.plus,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: ThemeColor.shadow,
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(0, 10)),
                            ],
                            color: ThemeColor.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectLanguage.tr,
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: ThemeColor.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                onTap: () {
                                  buildLanguageDialog(context);
                                },
                                child: Container(
                                  width: 70,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: ThemeColor.secondary,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Icon(LineIcons.language,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  YourComplaints.routeName,
                                  arguments: 'all');
                            },
                            child: Container(
                              width: (deviceSize.width / 2.5),
                              height: (deviceSize.width / 2.5),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: ThemeColor.shadow,
                                        blurRadius: 10,
                                        spreadRadius: 0.1,
                                        offset: Offset(0, 10)),
                                  ],
                                  color: ThemeColor.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  const Icon(
                                    LineIcons.chevronCircleRight,
                                    size: 50,
                                    color: ThemeColor.primary,
                                  ),
                                  Text(
                                    yourComplain.tr,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        color: ThemeColor.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, HelpingBot.routeName);
                            },
                            child: Container(
                              width: (deviceSize.width / 2.5),
                              height: (deviceSize.width / 2.5),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: ThemeColor.shadow,
                                        blurRadius: 10,
                                        spreadRadius: 0.1,
                                        offset: Offset(0, 10)),
                                  ],
                                  color: ThemeColor.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  const Icon(
                                    LineIcons.question,
                                    size: 50,
                                    color: ThemeColor.primary,
                                  ),
                                  Text(
                                    helpingBot.tr,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        color: ThemeColor.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
