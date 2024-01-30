import 'package:bloc_playground/screens/screen_one.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Examples'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Screen One'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const ScreenOne();
              }));
            },
          )
        ],
      ),
    );
  }
}
