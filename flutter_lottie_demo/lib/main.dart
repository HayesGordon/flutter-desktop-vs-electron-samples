import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'alphabet_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Wrap(
            children: alphabetList
                .map(
                  (e) => SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Lottie.asset(
                        'assets/lottie/$e.json',
                        width: 50,
                        frameRate: FrameRate(60),
                        fit: BoxFit.contain,
                        height: 50,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
