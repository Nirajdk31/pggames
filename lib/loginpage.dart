import 'package:flutter/material.dart';

import 'otppage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/wavybg.jpg'),
            //     fit: BoxFit.fill,
            //     opacity: 0.2,
            //   ),),
            padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Sign in',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Text('Enter your personal details to continue',
                  style: TextStyle(fontSize: 20,),),
                const SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    //controller: user,
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Mobile Number',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                  child: TextFormField(
                    //controller: pass,
                    autofocus: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                      ),
                      isCollapsed: true,
                      labelText: 'Password',
                      contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                      floatingLabelStyle: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Center(
                  child: SizedBox(
                    height: 45,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => OtpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black38,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      child: const Text('Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
