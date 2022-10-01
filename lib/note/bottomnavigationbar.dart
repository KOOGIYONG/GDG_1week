import 'package:flutter/material.dart';
import 'package:untitled/note/Counter.dart';
import 'package:untitled/note/_newfunction.dart';

class BotoomNavigationBarExample extends StatefulWidget {
  const BotoomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BotoomNavigationBarExample> createState() =>
      _BotoomNavigationBarExampleState();
}

class _BotoomNavigationBarExampleState
    extends State<BotoomNavigationBarExample> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Container(color: Colors.red,),
        Counter(),
        NewExample(),

      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "홈"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "활동"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "활동"
          ),
        ],
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: BotoomNavigationBarExample(),
  ));
}