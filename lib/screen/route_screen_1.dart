import 'package:flutter/material.dart';
import 'package:navigation/layout/basic_layout.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_screen_2.dart';

class RouteScreen1 extends StatefulWidget {
  final int number;

  const RouteScreen1({
    required this.number,
    super.key,
  });

  @override
  State<RouteScreen1> createState() => _RouteScreen1State();
}

class _RouteScreen1State extends State<RouteScreen1> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      /// 시스템에서 제공해주는 뒤로가기 기능을 제어
      /// canPop >> true(활성화) || false(비활성화)
      canPop: false,
      child: BasicLayout(
        children: _RouteScreen1Layout(),
        title: 'Route 1 Screen',
      ),
    );
  }

  List<Widget> _RouteScreen1Layout() {
    return [
      Text(
        'argument: ${widget.number}',
        textAlign: TextAlign.center,
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).pop(456);
        },
        child: Text('back page'),
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).maybePop();
        },
        child: Text('maybe back page'),
      ),
      OutlinedButton(
        onPressed: () {
          print(Navigator.of(context).canPop());
        },
        child: Text('can back page'),
      ),
      OutlinedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) {
                  return RouteScreen2();
                },
                settings: RouteSettings(
                  arguments: {
                    'name': 'hash',
                    'age': 30,
                    'job': 'developer',
                  },
                )),
          );
        },
        child: Text('Go Route 2 Screen'),
      ),
    ];
  }
}
