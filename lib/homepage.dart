import 'package:flutter/material.dart';
import 'package:pggames/playoptions.dart';
import 'package:pggames/winninghistory.dart';

import 'bethistory.dart';
import 'loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Wallets',
      style: optionStyle,
    ),
    Text(
      'Index 2: History',
      style: optionStyle,
    ),
    Text(
      'Index 3: Charts',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.wallet_outlined),
              ),
            ],
            title: const Text(
              "PG Games",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                 DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey,),
                  child: Column(
                    children: [
                      Container(child: Icon(Icons.person), ),
                      Text('Name', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('Number', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('Deposit', style: TextStyle(fontSize: 20),),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Withdraw', style: TextStyle(fontSize: 20),),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Home'),
                  onTap: () {
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Bet History'),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => BetHistory()));
                  },
                ),
                ListTile(
                  title: const Text('Winning History'),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => WinHistory()));
                  },
                ),
                ListTile(
                  title: const Text('Refer & earn'),
                  onTap: () {
                  //  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Game rates'),
                  onTap: () {
                   // Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('How to play'),
                  onTap: () {
                   // Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Deposit History'),
                  onTap: () {
                  //  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Withdrawal History'),
                  onTap: () {
                  //  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Settings'),
                  onTap: () {
                  //  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Share'),
                  onTap: () {
                  //  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                ListTile(
                  title: const Text('Logout'),
                  onTap: () {
                 //   Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black26,),
                padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
                height: 250,
                width: 350,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kalyan', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => PlayOptionsPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black38,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          child: const Text('Play',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Opening time', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        Text('Results', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        Text('Closing time', style: TextStyle(color: Colors.white, fontSize: 20, ),),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('00:00 am', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        Text('00h00m00s', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        Text('00:00 pm', style: TextStyle(color: Colors.white, fontSize: 20, ),),

                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Running now', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        Icon(Icons.info_outline, color: Colors.white,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_outlined),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Charts',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black38,
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
       );
  }
}
