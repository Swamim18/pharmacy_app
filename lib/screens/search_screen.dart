import 'package:flutter/material.dart';
import 'package:pharmacy_app/widgets/titles_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TitleTextWidget(label: "Search Screen"),
      ),
    );
  }
}
