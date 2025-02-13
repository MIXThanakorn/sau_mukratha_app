// ignore_for_file: prefer_final_fields, unnecessary_new

import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sau_mukratha_app/views/about_ui.dart';
import 'package:sau_mukratha_app/views/cal_bin_ui.dart';
import 'package:sau_mukratha_app/views/menu_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  NotchBottomBarController _pageController =
      new NotchBottomBarController(index: 1);

  List<Widget> viewInBody = [CalBinUi(), MenuUi(), AboutUi()];

  int indexShow = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 218, 70, 189),
        title: Text(
          'Tech SAU BUFFET',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
          onTap: (valueparam) {
            setState(() {
              indexShow = valueparam;
            });
          },
          kIconSize: 24,
          kBottomRadius: 20,
          notchBottomBarController: _pageController,
          notchColor: Color.fromARGB(255, 218, 70, 189),
          color: Color.fromARGB(255, 218, 70, 189),
          showLabel: true,
          itemLabelStyle: TextStyle(
            color: Colors.white,
          ),
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: Icon(
                FontAwesomeIcons.moneyBill1Wave,
                color: Colors.white,
              ),
              activeItem: Icon(
                FontAwesomeIcons.moneyBill1Wave,
                color: Colors.white,
              ),
              itemLabel: 'Cal',
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.home,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.home,
                color: Colors.white,
              ),
              itemLabel: 'Menu',
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.star,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.star,
                color: Colors.white,
              ),
              itemLabel: 'About',
            ),
          ]),
      body: viewInBody[indexShow],
    );
  }
}
