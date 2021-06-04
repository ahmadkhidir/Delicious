import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Color(0xFF1088BC),
      title: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(0, 1),
              spreadRadius: 0.1,
              color: Color(0x66000000),
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF1088BC),
        ),
        height: 50,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 19,
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Color(0xFFDDDDDD),
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: CircleAvatar(
                  foregroundImage: AssetImage('images/logo.png'),
                  radius: 18,
                  backgroundColor: Color(0x35B5E1),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                // clipBehavior: Clip.antiAlias,
                // color: Color(0xFF35B5E1),
                // width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'How to bake ...',
                    hintStyle: TextStyle(
                      color: Color(0xDDEEEEEE),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFF35B5E1),
                  ),
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                  ),
                  onSubmitted: (value) => print(value),
                ),
              ),
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints.expand(
                  width: 30,
                  height: 30,
                ),
                splashRadius: 30,
                splashColor: Color(0x35B5E1),
                icon: Image.asset(
                  'images/options.png',
                  semanticLabel: 'Options',
                ),
                onPressed: () => print('options'))
          ],
        ),
      ),
    );
  }
}
