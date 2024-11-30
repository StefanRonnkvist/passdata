import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool firstValue = false;
  bool secondValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Flip to change first square color ',
                textAlign: TextAlign.center,
              ),
              CupertinoSwitch(
                value: firstValue,
                onChanged: (bool value) {
                  setState(
                    () {
                      firstValue = value;
                    },
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Flip to change second square color ',
                textAlign: TextAlign.center,
              ),
              CupertinoSwitch(
                value: secondValue,
                onChanged: (bool value) {
                  setState(
                    () {
                      secondValue = value;
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 60,
            width: 170,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                child: const Text(
                  '<- Save temporarily and go to previous Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pop(context, [firstValue, secondValue]);
                }),
          ),
          const SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
