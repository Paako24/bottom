import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends  State<Home> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height * 0.2, 
        width: MediaQuery.of(context).size.width * 0.15,
        child: FloatingActionButton(
          onPressed: (){},
          child: Image.asset(
            'assets/emoji-normal.png',
            color: Colors.white,
            width: 50,
            // height: 20,
          ),
          backgroundColor: Color(0xFF7C68D4),
          foregroundColor: Colors.white,
          // evalation: 0,
          // shape: BeveledRectangleBorder(
          
          // ),
          // mini: false,

      ),
      ),

      bottomNavigationBar: BottomAppBar(
        notchMargin: 15.0,
        shape: CircularNotchedRectangle(),
        color:Colors.white,
        surfaceTintColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(top:15.0 ,right: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton (
                    icon: Icon(
                      Icons.home,
                      size: 35,
                      color: currentIndex == 0 ? Color(0xFF7C68D4) : Colors.grey.shade400,
                    ),
                    onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                  ),
                
                  SizedBox(height: 15,),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:15.0, left: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton (
                    icon: Icon(
                      Icons.manage_accounts,
                      size: 35,
                      color: currentIndex == 1 ? Color(0xFF7C68D4): Colors.grey.shade400,
                    ),
                    onPressed: () {
                            setBottomBarIndex(1);
                          },
                    splashColor: Colors.white,
                  ),
                  
                 
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
}