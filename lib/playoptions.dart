import 'package:flutter/material.dart';
import 'package:pggames/doublepanna.dart';
import 'package:pggames/pannabulk.dart';
import 'package:pggames/playjodi.dart';
import 'package:pggames/playsingle.dart';
import 'package:pggames/singlepanna.dart';
import 'package:pggames/tripplepanna.dart';

class PlayOptionsPage extends StatelessWidget {
  const PlayOptionsPage({Key? key}) : super(key: key);

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 15, top: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Play Single",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => PlaySingle()));
                      },
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 10, top: 25),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Play Jodi",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => PlayJodi()));
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 15, top: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Single Panna",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SinglePanna()));
                      },
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 10, top: 25),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Double Panna",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => DoublePanna()));
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 15, top: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Triple Panna",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => TripplePanna()));
                      },
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 10, top: 25),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Panna Bulk",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => PannaBulkPage()));
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 15, top: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Half Sangam",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 10, top: 25),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
                    child: InkWell(
                        child: Text("Full Sangam",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      onTap: () {},
                    ),
                  ),
                ],
              ),

            ],
          ),
          // body: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     itemBuilder: (context, index) {
          //       return Container(
          //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black45,),
          //         margin: EdgeInsets.all(10),
          //       );
          //     },
          //     itemCount: 10,
          // ),
        ),
    );
  }
}
