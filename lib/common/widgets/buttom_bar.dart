import 'package:amzon_clone_app/constants/global_variable.dart';
import 'package:amzon_clone_app/features/account/widgets/account_screen.dart';
import 'package:amzon_clone_app/features/cart/screens/cart_screen.dart';
import 'package:amzon_clone_app/features/home/screens/home_screen.dart';
import 'package:amzon_clone_app/providers/user_provider.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderwidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
    const CartScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userCartLen = context.watch<UserProvider>().user.cart.length;
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 0
                    ? GlobalVariables.selectedNavBarColor
                    : GlobalVariables.backgroundColor,
                width: bottomBarBorderwidth,
              ))),
              child: const Icon(Icons.home_outlined),
            ),
            label: '',
          ),
          //Acc
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 1
                    ? GlobalVariables.selectedNavBarColor
                    : GlobalVariables.backgroundColor,
                width: bottomBarBorderwidth,
              ))),
              child: const Icon(Icons.person_outline_outlined),
            ),
            label: '',
          ),

          //CART
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: _page == 2
                    ? GlobalVariables.selectedNavBarColor
                    : GlobalVariables.backgroundColor,
                width: bottomBarBorderwidth,
              ))),
              child: Badge(
                  elevation: 0,
                  badgeContent: Text(userCartLen.toString()),
                  badgeColor: Colors.white,
                  child: const Icon(Icons.shopping_cart_outlined)),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
