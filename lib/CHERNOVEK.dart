import 'package:flutter/material.dart';

class Chernovek extends StatefulWidget {
  const Chernovek({super.key});

  @override
  State<Chernovek> createState() => _ChernovekState();
}

class _ChernovekState extends State<Chernovek> {
  bool setValue = false;
  bool grupValue1 = true;
  bool grupValue2 = true;
  bool grupValue3 = true;
  int index = 0;
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: Column(
            children: [
              Switch.adaptive(
                activeColor: Colors.red,
                splashRadius: 20,
                value: setValue,
                onChanged: ((value) {
                  setState(() {
                    setValue = !setValue;
                  });
                }),
              ),
              RadioListTile(
                value: 3,
                groupValue: index,
                onChanged: ((value) {
                  setState(() {
                    index = 3;
                  });
                }),
              ),
              RadioListTile(
                value: 1,
                groupValue: index,
                onChanged: ((value) {
                  setState(() {
                    index = 1;
                    // sum++;
                  });
                }),
              ),
              RadioListTile(
                value: 2,
                groupValue: index,
                onChanged: ((value) {
                  setState(() {
                    index = 2;
                    // sum++;
                  });
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
