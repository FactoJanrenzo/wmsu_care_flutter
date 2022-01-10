import 'package:flutter/material.dart';
import 'package:mi_card_flutter/components/bottom_button.dart';
import 'package:mi_card_flutter/screens/choose.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF990000), //crimson red
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/wmsu_logo.png'),
              ),
              Text(
                'Greetings Crimson',
                style: TextStyle(
                  fontFamily: 'CMG Sans Bold',
                  fontSize: 30.0,
                  letterSpacing: 3.0,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Welcome to WMSUCare',
                style: TextStyle(
                  fontFamily: 'CMG Sans Medium',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),

              //Phone Number
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Juan Dela Cruz',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              //Email Address
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'BS Computer Science',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '4th Year',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              BottomButton(
                buttonTitle: 'Login',
                onTap: () {
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Choose(),
                    ),
                  );*/
                  Navigator.pushNamed(context, Choose.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}