import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/features/account/services/account_services.dart';
import 'package:flutter_amazon_clone/features/account/widgets/account_button.dart';

class TopButtons extends StatelessWidget {
  final AccountServices accountServices = AccountServices();

  TopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(text: 'Your Orders', onTap: () {}),
            AccountButton(text: 'Turn Seller', onTap: () {}),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(text: 'Your Wish List', onTap: () {}),
            AccountButton(
              text: 'Log Out',
              onTap: () => accountServices.logOut(context),
            ),
          ],
        ),
      ],
    );
  }
}
