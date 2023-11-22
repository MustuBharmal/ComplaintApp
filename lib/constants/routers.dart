import 'package:complain_app/global_string.dart';
import 'package:complain_app/screens/helping_bot.dart';
import 'package:complain_app/screens/inbox_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/auth_screen.dart';
import '../screens/add_complaint_screen.dart';
import '../screens/complaint_screen.dart';
import '../screens/dept_screen.dart';
import '../screens/home_screen.dart';
import '../screens/your_complaint_screen.dart';
import '../screens/sub_off_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case YourComplaints.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const YourComplaints(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case AddComplaints.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddComplaints(),
      );
    case ComplaintScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ComplaintScreen(),
      );

    case SubOffices.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SubOffices(),
      );
    case Department.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Department(),
      );
    case InboxScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const InboxScreen(),
      );
    case HelpingBot.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HelpingBot(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Scaffold(
          body: Center(
            child: Text(notExist.tr),
          ),
        ),
      );
  }
}
