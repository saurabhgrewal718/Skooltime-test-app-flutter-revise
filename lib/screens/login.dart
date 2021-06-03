import 'package:flutter/material.dart';
import 'package:skooltime/utils/routes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            //image
            SizedBox(height:30),
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.contain,
              height: 300,
            ),

            //text
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:32),
              child: Text(
                'Welcome to Skooltime, $name',
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
                      hintText: "Enter the UserName",
                      labelText: "USERNAME"
                    ),
                    onChanged: (value){
                      name=value;
                      setState(() {
                        
                      });
                    },
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
              child: Text('LOGIN')
            )
          ],
        )
      ),
    );
  }
}