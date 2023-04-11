import 'package:amzon_clone_app/constants/global_variable.dart';
import 'package:amzon_clone_app/features/admin/screens/post_screen.dart';
import 'package:flutter/material.dart';

class AdminScreem extends StatefulWidget {
  const AdminScreem({Key? key}) : super(key: key);

  @override
  State<AdminScreem> createState() => _AdminScreemState();
}

class _AdminScreemState extends State<AdminScreem> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderwidth = 5;

  List<Widget> pages = [
    const PostsScreen(),
    const Center(
      child: Text('Analytics Page'),
    ),
    const Center(
      child: Text('Cart Screen'),
    )
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            flexibleSpace: Container(
              decoration:
                  const BoxDecoration(gradient: GlobalVariables.appBarGradient),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/amazon_in.png',
                    width: 120,
                    height: 45,
                    //color: Colors.black,
                  ),
                ),
                const Text(
                  'Admin',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(50)),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          //Post
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
              child: const Icon(Icons.analytics_outlined),
            ),
            label: '',
          ),
          //Oders
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
              child: const Icon(Icons.all_inbox_outlined),
            ),
            label: '',
          ),

          //CART
        ],
      ),
    );
  }
}
