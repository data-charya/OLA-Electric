import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olaelectric/Screens/charger_screen.dart';
import 'package:olaelectric/Screens/settings_screen.dart';
import 'package:olaelectric/Theme/theme_data.dart';
import 'package:olaelectric/pages/home_screen.dart';
import 'package:olaelectric/pages/reserve.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int index = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: size.width * 0.15),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.1,
                child: SvgPicture.asset(
                  'assets/images/ola.svg',
                  color: Colors.white,
                ),
              ),
              Text(
                'ELECTRIC',
                style: GoogleFonts.montserrat(
                    color: const Color(0xff929292),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        centerTitle: true,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/speed.jpg'),
          )
        ],
      ),
      backgroundColor: theme.cardColor,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
        selectedBackgroundColor: Colors.green,
        unselectedItemColor: theme.bottomNavigationBarTheme.unselectedItemColor,
        selectedItemColor: theme.bottomNavigationBarTheme.selectedItemColor,
        onTap: (int val) {
          setState(() {
            index = val;
          });
        },
        currentIndex: index,
        items: [
          FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
          FloatingNavbarItem(icon: Icons.moped, title: 'Reserve'),
          FloatingNavbarItem(icon: Icons.pin_drop_outlined, title: 'Charger'),
          FloatingNavbarItem(icon: Icons.settings_outlined, title: 'Settings'),
        ],
      ),
      body: _buildBody(context, index),
    );
  }

  Widget _buildBody(BuildContext context, int index) {
    Widget body;
    if (index == 0) {
      body = const HomeScreen();
    } else if (index == 1) {
      body = const ReservePage();
    } else if (index == 2) {
      body = const ChargerScreen();
    } else {
      body = const SettingsScreen();
    }
    return body;
  }
}
