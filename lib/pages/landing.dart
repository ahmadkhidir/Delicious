import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/background.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              constraints: BoxConstraints(maxWidth: 300),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image(
                      image: AssetImage('images/logo_fast.gif'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170.0),
                    child: Hero(
                      tag: 'loginButton',
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/login'),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 20,
                    ),
                    child: OutlinedButton(
                      onPressed: () => null,
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(15),
                          ),
                          side: MaterialStateProperty.all(BorderSide(
                            width: 3,
                            color: Colors.white,
                          ))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
