import 'package:flutter/material.dart';

import 'components/card.dart';
import 'components/background.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Padding profileTile(
        {@required IconData icon,
        @required String label,
        void Function() onTap}) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ListTile(
          onTap: onTap,
          tileColor: Color(0xFFD9D9D9),
          minVerticalPadding: 20,
          leading: Icon(
            icon,
            size: 30,
            color: Color(0xFF1A1A1A),
          ),
          minLeadingWidth: 25,
          title: Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(children: [
        LogoBackground(),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              flexibleSpace: Container(
                color: Theme.of(context).accentColor,
              ),
              leading: GestureDetector(
                onTap: () => _scaffoldKey.currentState.openDrawer(),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'images/avatar.png',
                    ),
                    radius: 20,
                  ),
                ),
              ),
              title: Image(
                image: AssetImage('images/logoText.png'),
                // width: 200,
                height: 30,
              ),
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () => null),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ContentCard(
                  id: 1,
                  label:
                      'best way to cook a delicious meal on a monday morning',
                  image: AssetImage('images/pancakes.jpg'),
                  likes: '100',
                  liked: false,
                  replies: '20',
                  saved: false,
                ),
                ContentCard(
                  id: 1,
                  label:
                      'best way to cook a delicious meal on a monday morning',
                  image: AssetImage('images/pancakes.jpg'),
                  likes: '100',
                  liked: false,
                  replies: '20',
                  saved: false,
                ),
                ContentCard(
                  id: 1,
                  label:
                      'best way to cook a delicious meal on a monday morning',
                  image: AssetImage('images/pancakes.jpg'),
                  likes: '100',
                  liked: false,
                  replies: '20',
                  saved: false,
                ),
              ]),
            )
          ],
        ),
      ]),
      drawer: Drawer(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                ProfileCard(),
                Padding(padding: EdgeInsets.only(top: 30)),
                profileTile(icon: Icons.person, label: 'PROFILE'),
                profileTile(icon: Icons.post_add, label: 'POSTS'),
                profileTile(icon: Icons.settings, label: 'SETTINGS'),
                profileTile(icon: Icons.info, label: 'LICENSES'),
                profileTile(
                    icon: Icons.logout,
                    label: 'LOGOUT',
                    onTap: () => Navigator.pop(context)),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        child: Icon(Icons.add),
      ),
    );
  }
}
