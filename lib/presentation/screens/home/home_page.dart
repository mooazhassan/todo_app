import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todo_app/core/utils/app_style.dart';
import 'package:todo_app/core/utils/color_manager.dart';
import 'package:todo_app/presentation/screens/home/tabs/settings_tab/settings_page.dart';
import 'package:todo_app/presentation/screens/home/tabs/tasks_tab/tasks_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;

  List<Widget> tabs = [
    TasksPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ToDo List',
        ),
      ),
      floatingActionButton: buildFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomNavBar(),
      body: tabs[currentindex],
    );
  }

  Widget buildBottomNavBar() => BottomAppBar(
    clipBehavior: Clip.hardEdge,
    notchMargin: 10,
    padding: EdgeInsets.zero,
    child: BottomNavigationBar(
      backgroundColor: ColorManager.white,
      currentIndex: currentindex,
      onTap: (index) {
        currentindex = index;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined), label: 'Settings'),
      ],
    ),
  );

  Widget buildFAB() => FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        shape: StadiumBorder(
            side: BorderSide(color: ColorManager.white, width: 4)),
      );
}
