import 'package:flutter/material.dart';
import 'package:myapp/components/text_widged.dart';

class ListWidget extends StatefulWidget {

  final String title;
  final String subtitle;
  final Widget leading; // Menggunakan Widget sebagai tipe data
  final Widget trailing; // Menggunakan Widget sebagai tipe data

  const ListWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.trailing,
  });

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
          leading: widget.leading,
          title: TextWidget(
            text: widget.title,
            size: 16,
            fontStyle: FontStyle.normal,
            color: Colors.black,
          ),
          subtitle: TextWidget(
            text: widget.subtitle,
            size: 13,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
          trailing: widget.trailing,
        ),
    );
  }
}
