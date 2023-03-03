import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yums',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String pageActive = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f2029),
      body: Row(
        children: [
          Container(
            width: 70,
            padding: const EdgeInsets.only(
              top: 24,
              right: 12,
              left: 12,
            ),
            height: MediaQuery.of(context).size.height,
            child: _sideMenu(),
          )
        ],
      ),
    );
  }

  Widget _sideMenu() {
    return Column(
      children: [
        _logo(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            children: [
              _iconMenu(icon: Icons.rocket_sharp, menu: 'Home'),
              _iconMenu(icon: Icons.format_list_bulleted_rounded, menu: 'Menu'),
              _iconMenu(
                  icon: Icons.history_toggle_off_rounded, menu: 'History'),
              _iconMenu(icon: Icons.discount_outlined, menu: 'Promos'),
              _iconMenu(icon: Icons.sports_soccer_outlined, menu: 'Settings'),
            ],
          ),
        )
      ],
    );
  }

  Widget _logo() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(8),
          child: const Icon(
            Icons.fastfood,
            color: Colors.white,
            size: 24,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Yums Restaurant',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _iconMenu({
    required String menu,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: GestureDetector(
        onTap: () {},
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: pageActive == menu
                  ? Colors.deepOrangeAccent
                  : Colors.transparent,
            ),
            duration: const Duration(milliseconds: 300),
            curve: Curves.slowMiddle,
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  menu,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
