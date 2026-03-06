import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.deepOrangeAccent, Colors.red]),
                      borderRadius: BorderRadiusGeometry.circular(99)
                    ),
                    child: Center(
                      child: Text(
                        "JD",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  radius: 30,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("john@example.com"),
                  ],
                ),
              ],
            ),
            Divider(),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home_outlined, fontWeight: FontWeight.bold),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Favorite",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.favorite_outline,
                fontWeight: FontWeight.bold,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Saved Recipes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.bookmark_outline,
                fontWeight: FontWeight.bold,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Profile Settings",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.person_outline, fontWeight: FontWeight.bold),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}