import 'package:flutter/material.dart';

class BasicLayout extends StatefulWidget {
  final List<Widget> children;
  final String title;

  const BasicLayout({
    required this.children,
    required this.title,
    super.key,
  });

  @override
  State<BasicLayout> createState() => _BasicLayoutState();
}

class _BasicLayoutState extends State<BasicLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: widget.children,
        ),
      ),
    );
  }
}
