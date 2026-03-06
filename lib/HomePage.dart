import 'package:flutter/material.dart';
import 'Drawer1.dart';

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
      drawer: SafeArea(child: Drawer1()),
      body: Container(
        color: Colors.white,
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
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
                      title: 'Dessert',
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
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Reciepe(
                    image: 'https://i.ytimg.com/vi/EjVWqHYLTQ4/maxresdefault.jpg',
                    productName: 'Cremy Pasta Carbonara',
                    category: "Dinner",
                    time: '30 min',
                    star: '4.8',
                  ),
                  SizedBox(height: 15),
                  Reciepe(
                    image:
                    'https://bluejeanchef.com/uploads/2023/06/Grilled-Chicken-Salad-with-Mango-1280-9193-819x1024.jpg',
                    productName: 'Grilled Chicken Salad',
                    category: "Salad",
                    time: '25 min',
                    star: '4.6',
                  ),
                  SizedBox(height: 15),
                  Reciepe(
                    image:
                    'https://i.pinimg.com/736x/a3/c0/48/a3c0482d70131cc9e55ab8687807895b.jpg',
                    productName: 'Visual Feast of Dessert',
                    category: "Dessert",
                    time: '25 min',
                    star: '4.6',
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
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

class Reciepe extends StatelessWidget {
  String image;
  String productName;
  String category;
  String time;
  String star;

  Reciepe({
    super.key,
    required this.image,
    required this.productName,
    required this.category,
    required this.time,
    required this.star,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusGeometry.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),

        child: Row(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 2),
                  Text(
                    category,
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.black45,
                        size: 18,
                      ),
                      SizedBox(width: 2),
                      Text(
                        time,
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.star_rounded,
                        size: 20,
                        color: Colors.orangeAccent,
                      ),
                      Text(
                        star,
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
