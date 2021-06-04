// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final _formKey = GlobalKey<FormState>();
//   final _user = new User();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           alignment: Alignment.topCenter,
//           child: Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 width: 2,
//                 color: Color(0xFFCCCCCC),
//               ),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             constraints: BoxConstraints(maxWidth: 350, minWidth: 300),
//             padding: EdgeInsets.all(15),
//             margin: EdgeInsets.all(20),
//             child: ListView(
//               children: [
//                 Center(
//                   child: Container(
//                     margin: EdgeInsets.only(top: 30),
//                     child: Hero(
//                       tag: 'logo',
//                       child: CircleAvatar(
//                         foregroundImage: AssetImage('images/logo_round.png'),
//                         backgroundColor: Colors.white,
//                         radius: 75,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 30.0, bottom: 15),
//                   child: Center(
//                     child: Text(
//                       'LOGIN TO YOUR ACCOUNT',
//                       style: Theme.of(context).textTheme.headline1,
//                     ),
//                   ),
//                 ),
//                 Form(
//                   key: _formKey,
//                   child: Wrap(
//                     runSpacing: 20,
//                     children: [
//                       TextFormField(
//                         validator: (value) {
//                           if (!value.contains(RegExp(r'[a-z0-9]{5,9}'))) {
//                             return 'Enter a valid username to proceed';
//                           }
//                           return null;
//                         },
//                         onSaved: (value) {
//                           setState(() {
//                             _user.username = value;
//                           });
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'USERNAME',
//                           labelStyle:
//                               Theme.of(context).inputDecorationTheme.labelStyle,
//                           focusedBorder:
//                               Theme.of(context).inputDecorationTheme.border,
//                           enabledBorder:
//                               Theme.of(context).inputDecorationTheme.border,
//                         ),
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         obscuringCharacter: '>',
//                         validator: (value) {
//                           if (!value.contains(RegExp(r'^[A-Z][a-z0-9]{4,9}'))) {
//                             return 'Enter a valid password to proceed';
//                           }
//                           return null;
//                         },
//                         onSaved: (value) {
//                           setState(() {
//                             _user.password = value;
//                           });
//                         },
//                         decoration: InputDecoration(
//                           labelText: 'PASSWORD',
//                           labelStyle:
//                               Theme.of(context).inputDecorationTheme.labelStyle,
//                           focusedBorder:
//                               Theme.of(context).inputDecorationTheme.border,
//                           enabledBorder:
//                               Theme.of(context).inputDecorationTheme.border,
//                         ),
//                       ),
//                       Flex(
//                         direction: Axis.horizontal,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ElevatedButton.icon(
//                             onPressed: () {
//                               final form = _formKey.currentState;
//                               if (form.validate()) {
//                                 form.save();
//                                 final authenticated = _user.save();
//                                 if (authenticated) {
//                                   Navigator.pushReplacementNamed(
//                                       context, '/home');
//                                 }
//                               }
//                             },
//                             icon:
//                                 ImageIcon(AssetImage('images/login_icon.png')),
//                             label: Text('LOGIN'),
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all(
//                                   Theme.of(context).accentColor),
//                               shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   side: BorderSide(
//                                     color: Theme.of(context).accentColor,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           TextButton.icon(
//                             onPressed: () =>
//                                 Navigator.popAndPushNamed(context, '/signup'),
//                             icon: ImageIcon(
//                               AssetImage('images/signup_icon.png'),
//                               color: Theme.of(context).accentColor,
//                             ),
//                             label: Text(
//                               'SIGNUP',
//                               style: TextStyle(
//                                 color: Theme.of(context).accentColor,
//                               ),
//                             ),
//                             style: ButtonStyle(
//                               shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   side: BorderSide(
//                                     color: Theme.of(context).accentColor,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'components/background.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              constraints: BoxConstraints(maxWidth: 300),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0, bottom: 20),
                    child: Image(
                      image: AssetImage('images/logoText.png'),
                      // width: 200,
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: Text(
                      'LOGIN TO YOUR ACCOUNT',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Wrap(
                      runSpacing: 20,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (!value.contains(RegExp(r'[A-Za-z0-9_]{5,9}'))) {
                              return 'Invalid email or username entered!';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              _user.username = value;
                            });
                          },
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'EMAIL OR USERNAME',
                            hintStyle: Theme.of(context)
                                .inputDecorationTheme
                                .hintStyle,
                            enabledBorder: Theme.of(context)
                                .inputDecorationTheme
                                .enabledBorder,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder,
                            errorBorder: Theme.of(context)
                                .inputDecorationTheme
                                .errorBorder,
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (!value
                                .contains(RegExp(r'^[A-Z][a-z0-9]{4,9}'))) {
                              return 'Invalid password entered!';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              _user.password = value;
                            });
                          },
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'PASSWORD',
                            hintStyle: Theme.of(context)
                                .inputDecorationTheme
                                .hintStyle,
                            enabledBorder: Theme.of(context)
                                .inputDecorationTheme
                                .enabledBorder,
                            focusedBorder: Theme.of(context)
                                .inputDecorationTheme
                                .focusedBorder,
                            errorBorder: Theme.of(context)
                                .inputDecorationTheme
                                .errorBorder,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            style: ButtonStyle(alignment: Alignment.centerLeft),
                            onPressed: () => null,
                            child: Text(
                              'FORGET PASSWORD?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            top: 70,
                            bottom: 20,
                          ),
                          child: Hero(
                            tag: 'loginButton',
                            child: ElevatedButton(
                              onPressed: () {
                                final form = _formKey.currentState;
                                if (form.validate()) {
                                  form.save();
                                  final authenticated = _user.save();
                                  if (authenticated) {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, '/home', (route) => false);
                                  }
                                }
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(15),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
              child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10),
              child: IconButton(
                  highlightColor: Colors.green,
                  color: Colors.white,
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context)),
            ),
          ))
        ],
      ),
    );
  }
}

class User {
  String username;
  String password;

  save() {
    if (username.isNotEmpty && password.isNotEmpty) {
      return true;
    }
  }
}
