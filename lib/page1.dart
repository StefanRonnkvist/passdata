import 'package:flutter/material.dart';
import 'page2.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool firstSquareColor = false;
  bool secondSquareColor = false;

  _navigateNextPageValue(BuildContext context) async {
    final List nextPageValues = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const PageTwo()),
    );
    setState(() {
      firstSquareColor = nextPageValues[0];
      secondSquareColor = nextPageValues[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 150,
              width: 150,
              color: firstSquareColor == false ? Colors.blue : Colors.pink),
          Container(
              height: 150,
              width: 150,
              color: secondSquareColor == false ? Colors.blue : Colors.pink),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                //elevation: 15,
                //color: Colors.grey[700],
                child: const Text(
                  'Next Page ->',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                onPressed: () {
                  _navigateNextPageValue(context);
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
