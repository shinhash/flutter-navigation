import 'package:flutter/material.dart';
import 'package:navigation/layout/basic_layout.dart';
import 'package:navigation/screen/route_screen_3.dart';

class RouteScreen2 extends StatefulWidget {
  const RouteScreen2({super.key});

  @override
  State<RouteScreen2> createState() => _RouteScreen2State();
}

class _RouteScreen2State extends State<RouteScreen2> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return BasicLayout(
      children: _RouteScreen2Layout(
        arguments: arguments,
      ),
      title: 'Route 2 Screen',
    );
  }

  _RouteScreen2Layout({required dynamic arguments}) {
    String? name = arguments['name'];
    int? age = arguments['age'];
    String? job = arguments['job'];
    return [
      Text(
        'arguments ::>> name: ${name} | age: ${age} | job: ${job}',
        textAlign: TextAlign.center,
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('back page'),
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            '/three',
            arguments: {
              'name': 'yun tae myung',
              'age': 30,
              'job': 'driver',
            },
          );
        },
        child: Text('Go Route 3 Screen'),
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return RouteScreen3();
              },
            ),
          );
        },
        child: Text('Push Replacement'),
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(
            '/three',
            arguments: {
              'name': 'yun tae myung',
              'age': 30,
              'job': 'driver',
            },
          );
        },
        child: Text('Push ReplacementNamed'),
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/three',
            (route) {
              /// route 를 삭제할 경우 (Route Stack) false 반환
              /// route 를 미삭제할 경우 true 반환
              print('route: ${route.settings.name}');
              return route.settings.name == '/';
            },
          );
        },
        child: Text('Push Named And Remove Until'),
      ),
    ];
  }
}
