import 'package:flutter/material.dart';
import 'package:pharmacy_app/providers/theme_provider.dart';
import 'package:pharmacy_app/widgets/subtitles_text.dart';
import 'package:pharmacy_app/widgets/titles_text.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleTextWidget(
            label: "This is the Title",
            fontSize: 60,
            maxLines: 2,
          ),
          SubtitleTextWidget(label: "Hello World"),
          SwitchListTile(
              title: Text(
                  themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
              value: themeProvider.getIsDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(themevalue: value);
              })
        ],
      ),
    );
  }
}
