import 'package:amzon_clone_app/constants/global_variable.dart';
import 'package:amzon_clone_app/features/account/widgets/below_app_bar.dart';
import 'package:amzon_clone_app/features/account/widgets/orders.dart';
import 'package:amzon_clone_app/features/account/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

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
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.notifications_outlined),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                )
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(50)),
      body: Column(
        children: const [
          BelowAppBar(),
          SizedBox(height: 10),
          TopBotton(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
