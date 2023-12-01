import 'dart:math';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BirthdayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Stack(
        children: [
          Center(child: FireCrackers()), // Firecrackers animation
          Center(child: Rockets()), // Rockets animation
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated container with a bouncing cake
                BouncingCake(),

                SizedBox(height: 20),
                Text(
                  'Happy Birthday!',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextDetail(),
                SizedBox(height: 10),

                TextDetail2(),
                // Text(
                //   'May all your wishes come true!',
                //   style: TextStyle(
                //     fontSize: 18,
                //     color: Colors.white,
                //   ),
                // ),
                // SizedBox(height: 20),
                // // Text with different colors
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Have a ',
                //       style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.white,
                //       ),
                //     ),
                //     Text(
                //       'fantastic ',
                //       style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.blue,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     Text(
                //       'day!',
                //       style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FireCrackers extends StatefulWidget {
  @override
  _FireCrackersState createState() => _FireCrackersState();
}

class _FireCrackersState extends State<FireCrackers>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _scaleAnimation = Tween(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        );
      },
    );
  }
}

class Rockets extends StatefulWidget {
  @override
  _RocketsState createState() => _RocketsState();
}

class _RocketsState extends State<Rockets> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value * 200, 0),
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
        );
      },
    );
  }
}

class BouncingCake extends StatefulWidget {
  @override
  _BouncingCakeState createState() => _BouncingCakeState();
}

class _BouncingCakeState extends State<BouncingCake>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _bounceAnimation = Tween(begin: 150.0, end: 200.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Container(
          height: _bounceAnimation.value,
          width: _bounceAnimation.value,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CakeDetails(),
                  ),
                );
              },
              child: Hero(
                  tag: 'cakeTag',
                  child:
                      Lottie.asset('assets/BD.json', height: 400, width: 400))),
        );
      },
    );
  }
}

class CakeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(
                tag: 'cakeTag',
                child:
                    Lottie.asset('assets/BD.json', height: 400, width: 400))),
      ),
    );
  }
}

class TextDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30.0,
            fontFamily: 'Bobbers',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Happy Birthday!'),
              TyperAnimatedText('May all your wishes come true!'),
              TyperAnimatedText('Have a Fantastic Day'),
            
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ));
  }
}

class TextDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(width: 20.0, height: 100.0),
        const Text(
          'Stay',
          style: TextStyle(fontSize: 43.0, color: Colors.white),
        ),
        const SizedBox(width: 20.0, height: 100.0),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 40.0,
            color: Colors.greenAccent,
            fontFamily: 'Horizon',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('HAPPY'),
              RotateAnimatedText('BEAUTIFULL'),
              RotateAnimatedText('LOVING'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    );
  }
}
