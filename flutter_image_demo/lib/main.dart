import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final images = List.generate(
    100,
    (index) => RotatingImage(
      child: CachedNetworkImage(
        imageUrl: 'https://picsum.photos/seed/${index + 1}/2000/2000',
        width: 20,
        height: 20,
      ),
    ),
    growable: false,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: images,
            ),
          ),
        ),
      ),
    );
  }
}

class RotatingImage extends StatefulWidget {
  const RotatingImage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<RotatingImage> createState() => _RotatingImageState();
}

class _RotatingImageState extends State<RotatingImage>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat();

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animationController.view,
      child: widget.child,
    );
  }
}
