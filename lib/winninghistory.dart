import 'package:flutter/material.dart';

class WinHistory extends StatelessWidget {
  const WinHistory({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 200),
          child: Center(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black26,),
              padding: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 10),
              height: 150,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('23/09/22', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Amount', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                      Text('200', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                      Text('Winning Details...', style: TextStyle(color: Colors.white, fontSize: 20, ),),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
