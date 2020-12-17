import 'package:flutter/material.dart';
import 'package:meditation_app/screens/sign_up2.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Background(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 75),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(fontSize: 23),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 55,
                    child: FlatButton(
                      color: Color(0xFF5C6BC0),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/fbLogo.png',
                            color: Colors.white,
                          ),
                          SizedBox(width: 40),
                          Text(
                            'Continue with facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 55,
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/googleLogo.png',
                          ),
                          SizedBox(width: 40),
                          Text(
                            'Continue with google',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'or log in with email'.toUpperCase(),
                    style: TextStyle(color: Colors.black26),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8EAF6),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter email',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8EAF6),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
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
                        'LOG IN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?".toUpperCase(),
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp2(),
                              ),
                            );
                          },
                          child: Text(
                            ' sign up'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black26,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key key,
    this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -20,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Group 6800.png',
              height: 280,
              width: 280,
            ),
          ),
          Positioned(
            top: 35,
            left: 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(33),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(33),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
