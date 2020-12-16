import 'package:flutter/material.dart';
import 'package:meditation_app/screens/log_in.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('small '),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 20,
                  ),
                  Text(' moon')
                ],
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    image: DecorationImage(
                      image: AssetImage('assets/images/main.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'We are What we do',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Thousands of people using small moon to small medditation',
                        style: TextStyle(color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          color: Colors.blueGrey,
                          onPressed: () {},
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'already have an account?'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black26,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogIn(),
                                ),
                              );
                            },
                            child: Text(
                              ' log in'.toUpperCase(),
                              style: TextStyle(
                                color: Colors.black26,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
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
