import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import BLoC Anda
import 'package:myapp/components/list_widged.dart';
import 'package:myapp/components/text_widged.dart';
import 'package:myapp/controller/surah/surah_bloc.dart';
import 'package:myapp/controller/surah/surah_repo.dart';

class DashboardPages extends StatefulWidget {
  const DashboardPages({super.key});

  @override
  State<DashboardPages> createState() => _DashboardPagesState();
}

class _DashboardPagesState extends State<DashboardPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        title: const Text(
          "Qur'an App",
          style: TextStyle(
            fontSize: 24,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage("assets/images/user.png"),
        ),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(24.0),
            sliver: SliverGrid.count(
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.purple[100],
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.book,
                        size: 48,
                        color: Colors.purple,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Surah",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
