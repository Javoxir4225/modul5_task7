import 'package:flutter/material.dart';
import 'package:modul5_task7/amazon.dart';
import 'package:modul5_task7/facebook.dart';
import 'package:modul5_task7/facebook_minyu.dart';
import 'package:modul5_task7/instagram.dart';

class Minyu extends StatefulWidget {
  const Minyu({super.key});

  @override
  State<Minyu> createState() => _MinyuState();
}

class _MinyuState extends State<Minyu> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _animation = Tween(
      begin: const Offset(-2.0, -2.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animation2 = Tween(
      begin: const Offset(2.0, 2.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animation3 = Tween(
      begin: const Offset(-1.0, 1.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SlideTransition(
                position: _animation,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyInstagram(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                   
                    fixedSize: const Size(300, 50),
                  ),
                  child: const Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SlideTransition(
                position: _animation2,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FacebookMinyu(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    
                    fixedSize: const Size(300, 50),
                  ),
                  child: const Text(
                    "facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SlideTransition(
                position: _animation3,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Amazon(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    
                    fixedSize: const Size(300, 50),
                  ),
                  child: const Text(
                    "amazon",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
