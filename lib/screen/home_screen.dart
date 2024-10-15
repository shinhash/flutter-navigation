import 'package:flutter/material.dart';
import 'package:navigation/layout/basic_layout.dart';
import 'package:navigation/screen/route_screen_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BasicLayout(
      children: _HomeScreenLayout(),
      title: 'Home Screen',
    );
  }

  List<Widget> _HomeScreenLayout() {
    return [
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
        onPressed: () async {
          final result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return RouteScreen1(
                  number: 20,
                );
              },
            ),
          );
          print('result: ${result}');
        },
        child: Text('Go Route 1 Screen'),
      ),
    ];
  }
}
