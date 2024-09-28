
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;  // Initial theme mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Theme with GetX'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              // Switch Button
              Switch(
                value: isDarkMode,  // Current theme mode value
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;  // Update UI
                  });
                  if (isDarkMode) {
                    Get.changeThemeMode(ThemeMode.dark);  // Switch to Dark Mode
                  } else {
                    Get.changeThemeMode(ThemeMode.light);  // Switch to Light Mode
                  }
                },
              ),
              SizedBox(height: 20),
              Text(
                isDarkMode ? "Dark Mode" : "Light Mode",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}