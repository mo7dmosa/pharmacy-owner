import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  final List<IconData> _bnScreens = <IconData>[
    Icons.home,
    Icons.list,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      appBar: AppBar(
        // title: Text(_bnScreens[_currentIndex].title),
      ),
      // body: _bnScreens[_currentIndex].widget,
      bottomNavigationBar: Material(
        elevation: 8,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        color: Colors.white,
        child: Container(
          height: 70,
          width: double.infinity,


          child: ListView.builder(
              itemCount: _bnScreens.length,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (ctx, i) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = i;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 250),
                          width: 35,
                          decoration: BoxDecoration(
                              border: i == _currentIndex
                                  ? Border(
                                      top: BorderSide(
                                          width: 3, color: Colors.red))
                                  : null),
                          child: Icon(
                            _bnScreens[i],
                            size: 35,
                            color: i == _currentIndex
                                ? Colors.red
                                : Colors.grey.shade500,
                          ),
                        )),
                  ),
          scrollDirection: Axis.horizontal,),
        ),
      ),
    );
  }
}
