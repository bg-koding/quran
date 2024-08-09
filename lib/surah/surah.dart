import 'package:flutter/material.dart';
import 'package:myapp/components/appbar_main.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppbarMain(),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}