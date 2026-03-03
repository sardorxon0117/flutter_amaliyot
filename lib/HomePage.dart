import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrangeAccent, Colors.red],
            ),
          ),
        ),
        foregroundColor: Colors.white,
        title: Text(
          "Recipe Book",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer1(),
      body: Container(
        color: Colors.white,
        padding: EdgeInsetsGeometry.all(20),
        child: ListView(
          children: [
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            SizedBox(height: 10),
            Container(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                children: [
                  Category(
                    image:
                        'https://static.vecteezy.com/system/resources/previews/010/179/014/non_2x/fried-egg-on-pan-cartoon-file-free-png.png',
                    title: 'Breakfast',
                    color: Colors.yellow.withOpacity(0.4),
                    scale: 15,
                  ),
                  Category(
                    image:
                        'https://img.pikbest.com/png-images/20241230/cheeseburger-with-bacon-and-egg-on-a-white-transparent-png-background_11319964.png!bw700',
                    title: 'Lunch',
                    color: Colors.orange.withOpacity(0.3),
                    scale: 6,
                  ),
                  Category(
                    image:
                        'https://www.picng.com/upload/noodle/png_noodle_14792.png',
                    title: 'Dinner',
                    color: Colors.deepOrangeAccent.withOpacity(0.3),
                    scale: 22,
                  ),
                  Category(
                    image:
                        'https://static.vecteezy.com/system/resources/previews/010/179/016/non_2x/delicious-dessert-cake-file-free-png.png',
                    title: 'Desert',
                    color: Colors.pinkAccent.withOpacity(0.3),
                    scale: 15,
                  ),
                  Category(
                    image:
                        'https://static.vecteezy.com/system/resources/previews/048/557/893/non_2x/a-garden-salad-served-in-a-bowl-isolated-against-a-transparent-background-for-crisp-presentation-free-png.png',
                    title: 'Salad',
                    color: Colors.green.withOpacity(0.3),
                    scale: 15,
                  ),
                  Category(
                    image:
                        'https://delivery.restoran-ksk.ru/wp-content/uploads/2023/04/lagman.png',
                    title: 'Asian',
                    color: Colors.purpleAccent.withOpacity(0.2),
                    scale: 8,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Recipes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.red,
                    padding: EdgeInsetsGeometry.all(0),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("See All"),
                      SizedBox(width: 2),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusGeometry.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black54)
                  ]
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}

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
                    child: Text(
                      "JD",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  radius: 30,
                  backgroundColor: Colors.red,
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

class Category extends StatelessWidget {
  String image;
  String title;
  Color color;
  double scale;

  Category({
    required this.image,
    required this.title,
    required this.color,
    required this.scale,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: NetworkImage(image, scale: scale)),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
