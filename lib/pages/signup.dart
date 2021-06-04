import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xFFCCCCCC),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints(maxWidth: 350, minWidth: 300),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(20),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Hero(
                      tag: 'logo',
                      child: CircleAvatar(
                        foregroundImage: AssetImage('images/logo_round.png'),
                        backgroundColor: Theme.of(context).accentColor,
                        radius: 65,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 15),
                  child: Center(
                    child: Text(
                      'CREATE A NEW ACCOUNT',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Wrap(
                    runSpacing: 20,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'USERNAME',
                          labelStyle:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                          focusedBorder:
                              Theme.of(context).inputDecorationTheme.border,
                          enabledBorder:
                              Theme.of(context).inputDecorationTheme.border,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                          focusedBorder:
                              Theme.of(context).inputDecorationTheme.border,
                          enabledBorder:
                              Theme.of(context).inputDecorationTheme.border,
                        ),
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () => null,
                            icon:
                                ImageIcon(AssetImage('images/signup_icon.png')),
                            label: Text('SIGNUP'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).accentColor),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () =>
                                Navigator.popAndPushNamed(context, '/login'),
                            icon: ImageIcon(
                              AssetImage('images/login_icon.png'),
                              color: Theme.of(context).accentColor,
                            ),
                            label: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
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
