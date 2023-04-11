import 'package:amzon_clone_app/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopBotton extends StatefulWidget {
  const TopBotton({Key? key}) : super(key: key);

  @override
  State<TopBotton> createState() => _TopBottonState();
}

class _TopBottonState extends State<TopBotton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountBotton(text: 'Your Orders', onTap: () {}),
            AccountBotton(text: 'Turn Seller', onTap: () {}),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            AccountBotton(text: 'Logout', onTap: () {}),
            AccountBotton(text: 'Your whist list', onTap: () {}),
          ],
        ),
      ],
    );
  }
}
