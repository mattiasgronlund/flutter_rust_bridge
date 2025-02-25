import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  final String name;
  final String title;
  final String subtitle;
  final Widget icon;
  final Widget body;

  const ExamplePage({
    super.key,
    required this.name,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
