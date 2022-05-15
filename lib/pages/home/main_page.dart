import 'package:middodaren/pages/home/beranda_page.dart';
import 'package:middodaren/pages/home/profil_page.dart';
import 'package:middodaren/pages/home/search_page.dart';
import 'package:middodaren/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        child: Icon(Icons.shopping_basket, color: whiteColor),
      );
    }

    Widget bottNav() {
      return ClipRRect(
        // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: Container(
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: primaryColor,
              unselectedItemColor: whiteColor,
              selectedItemColor: secondaryColor,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                      // margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.home)),
                  label: 'Beranda',
                  backgroundColor: whiteColor,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      // margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.search)),
                  label: 'Cari',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      // margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.person)),
                  label: 'Profil',
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return BerandaPage();
          break;
        case 1:
          return SearchPage();
          break;
        case 2:
          return ProfilPage();
          break;
        default:
      }
    }

    return Scaffold(
      bottomNavigationBar: bottNav(),
      extendBody: true,
      // floatingActionButton: cartButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: body(),
    );
  }
}
