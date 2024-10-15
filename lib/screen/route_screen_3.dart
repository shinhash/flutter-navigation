import 'package:flutter/material.dart';
import 'package:navigation/layout/basic_layout.dart';

class RouteScreen3 extends StatefulWidget {
  const RouteScreen3({super.key});

  @override
  State<RouteScreen3> createState() => _RouteScreen3State();
}

class _RouteScreen3State extends State<RouteScreen3> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return BasicLayout(
      title: 'Route Screen 3',
      children: _RouteScreen3Layout(
        arguments: arguments,
      ),
    );
  }

  _RouteScreen3Layout({required dynamic arguments}) {
    return [
      Text(
        'arguments: ${arguments}',
        textAlign: TextAlign.center,
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('back page'),
      ),
    ];
  }
}
