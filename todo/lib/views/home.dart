import "package:flutter/material.dart";
import "package:get/get.dart";

import '../widgets/themes.dart';
import "../widgets/colors.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Leo",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 30,
            fontWeight: FontWeight.w500,
            // color:  LightModeKolors.textColor : DarkModeKolors.textColor,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.lightbulb),
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(Themes.lightMode)
                  : Get.changeTheme(Themes.darkMode);
            },
          ),
        ],
      ),

      //drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            // MyDrawerHeader(),
            // DrawerList(),
          ],
        ),
      ),

      //body
      // body: ,

      //Floating Action Button (FAB)
    );
  }
}
