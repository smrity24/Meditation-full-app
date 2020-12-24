import 'package:flutter/material.dart';
import 'package:meditation_app/screens/welcome.dart';

class SignUp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Backgrd(
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      Text(
                        'Create Your Account',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(height: 10),
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
                      SizedBox(height: 10),
                      Text(
                        'or log in with email'.toUpperCase(),
                        style: TextStyle(color: Colors.black26),
                      ),
                      SizedBox(height: 20),
                      SignUpForm(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _securedText = true;
  bool privacy = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFE8EAF6),
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter username',
                  suffixIcon: Image.asset('assets/images/Vector 9.png')),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter email',
                  suffixIcon: Image.asset('assets/images/Vector 9.png')),
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
              obscureText: _securedText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: _securedText
                      ? Image.asset('assets/images/Vector.png')
                      : Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(() {
                      _securedText = !_securedText;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('I have read the '),
              Text(
                'Privacy Policy',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Checkbox(
                  value: privacy,
                  onChanged: (value) {
                    setState(() {
                      privacy = value;
                    });
                  }),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              color: Colors.blueGrey,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcome()));
              },
              child: Text(
                'GET STARTED',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Backgrd extends StatelessWidget {
  const Backgrd({
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
            top: -30,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Group 6800.png',
              height: 280,
              width: 280,
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
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
