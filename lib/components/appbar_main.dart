import 'package:flutter/material.dart';

class AppbarMain extends StatefulWidget {
  const AppbarMain({super.key});

  @override
  State<AppbarMain> createState() => _AppbarMainState();
}

class _AppbarMainState extends State<AppbarMain> {
   bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Padding(
        padding: EdgeInsets.fromLTRB(24, 48, 24, 24),
        child: Row(
          children: [
            Text(
              "Qur'an",
              style: TextStyle(
                fontSize: 24,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Row(
              children: [
                IconButton(
              onPressed:  _toggleTheme,
              icon: Icon(_isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
            ),

                SizedBox(width: 24),
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/user.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}