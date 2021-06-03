import 'package:flutter/material.dart';
import 'package:skooltime/utils/routes.dart';

class Signup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child:Column(
          children: [
            //image
            SizedBox(height:30),
            Image.asset(
              'assets/images/1.jpg',
              fit: BoxFit.contain,
              height: 300,
            ),

            //text
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:32),
              child: Text(
                'Welcome to Skooltime, here you will learn a lot and manage a lot',
              ),
            ),

            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:32,horizontal: 16),
              child: Column(
                children: [
                  //textbox1
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Register the UserName",
                      labelText: "REGISTER USERNAME"
                    ),
                  ),

                  //textbox2
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter the Password",
                      labelText: "PASSWORD"
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:30),
            //elevatedbutton
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.homeroute);
              }, 
              child: Text('Signup')
            )
          ],
        )
      ),
    );
  }
}