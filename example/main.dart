import 'package:flutter/material.dart';
import 'package:online_indicator/online_indicator.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Indicator Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnlineIndicatorDemo(),
    );
  }
}

class OnlineIndicatorDemo extends StatelessWidget {
  const OnlineIndicatorDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Indicator Demo'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            const OnlineIndicator(
              isOnline: true,
              radius: 15,
              bgColor: Colors.green,
              borderColor: Colors.white,
              borderWide: 2,
            ),
          ],
        ),
      ),
    );
  }
}
