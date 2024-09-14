import 'package:flutter/material.dart';
import 'package:pharmacy_app/widgets/titles_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TitleTextWidget(label: "Cart Screen"),
      ),
    );
  }
}
