import 'package:flutter/material.dart';

import 'loginpage.dart';
import 'newaccpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('PG Games'.toUpperCase(), style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40,),
              const Text('Welcome to PG Games', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10,),
              const Text('Ready to start learning?',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      child: const Text('Create New Account ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => NewAccountPage()));
                    },
                  ),
                  const Text('OR ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  InkWell(
                      child: const Text('Login', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black38,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: const Text('Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
