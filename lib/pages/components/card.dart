import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/avatar.png'),
                  backgroundColor: Colors.transparent,
                  radius: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad Khidir',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Text(
                          'MrVang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        '09012716734',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () => null,
                  icon: ImageIcon(
                    AssetImage('images/s.png'),
                    size: 25,
                    color: Colors.white,
                  ),
                  label: Text(
                    '100',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.all(0)),
                  ),
                ),
                TextButton.icon(
                  onPressed: () => null,
                  icon: ImageIcon(
                    AssetImage('images/c.png'),
                    size: 22,
                    color: Colors.white,
                  ),
                  label: Text(
                    '100',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith(
                        (states) => EdgeInsets.all(0)),
                  ),
                ),
                Icon(
                  Icons.circle,
                  color: Color(0xFF34D717),
                  size: 17,
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
      ),
    );
  }
}

class ContentCard extends StatelessWidget {
  const ContentCard({
    Key key,
    @required int this.id,
    @required String this.label,
    @required ImageProvider this.image,
    @required String this.likes,
    @required bool this.liked,
    @required String this.replies,
    @required bool this.saved,
  }) : super(key: key);

  final id;
  final label;
  final image;
  final likes;
  final liked;
  final replies;
  final saved;

  TextButton cardButton(
      {@required ImageProvider icon,
      @required String label,
      ImageProvider selectedIcon,
      bool selected = false}) {
    return TextButton.icon(
      onPressed: () => null,
      icon: ImageIcon(
        selected ? selectedIcon : icon,
        color: Color(0xFF333333),
        size: 24,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 2, color: Theme.of(context).accentColor),
          bottom: BorderSide(width: 2, color: Theme.of(context).accentColor),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              label.toString().toUpperCase(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Container(
            child: Image(
              image: image,
              height: 200,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardButton(
                  icon: AssetImage('images/l.png'),
                  label: likes,
                  selected: liked,
                  selectedIcon: AssetImage('images/l_s.png'),
                ),
                cardButton(
                  icon: AssetImage('images/r.png'),
                  label: replies,
                ),
                IconButton(
                  onPressed: () => null,
                  icon: ImageIcon(
                    saved
                        ? AssetImage('images/a_s.png')
                        : AssetImage('images/a.png'),
                    color: Color(0xFF333333),
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
