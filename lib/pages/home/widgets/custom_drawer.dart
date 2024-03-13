import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/config/pages_route_name.dart';
import 'package:news_app/main.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width * 0.75,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            height: 150,
            color: Constants.theme.primaryColor,
            alignment: Alignment.bottomCenter,
            child: Text(
              "News App",
              style: Constants.theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 30.0,
                bottom: 10.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.list_outlined,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Categories",
                    style: Constants.theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              navigatorKey.currentState!
                  .pushReplacementNamed(PagesRouteName.settingsView);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 10.0,
                bottom: 30.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Settings",
                    style: Constants.theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
