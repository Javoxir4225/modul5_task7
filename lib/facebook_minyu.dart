import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modul5_task7/facebook.dart';

class FacebookMinyu extends StatefulWidget {
  const FacebookMinyu({super.key});

  @override
  State<FacebookMinyu> createState() => _FacebookMinyuState();
}

class _FacebookMinyuState extends State<FacebookMinyu>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween(
      begin: const Offset(1.0, 1.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
    super.initState();

    Timer(const Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Facebook(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SlideTransition(
        position: _animation,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    "assets/images/facebook.jpg",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
