import 'package:flutter/material.dart';

import 'Drawer1.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

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
        child: ListView(
          clipBehavior: Clip.none,
          children: [
            SizedBox(height: 80,),
            Icon(Icons.favorite_outline_rounded, size: 100, color: Colors.black26,),
            Text("No favourites yet", textAlign: TextAlign.center,style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w500, fontSize: 20),),
            SizedBox(height: 10,),
            Text("Start adding recipes to your favourites!", textAlign: TextAlign.center,style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w500, fontSize: 16),),
          ],
        ),
      ),
    );
  }
}
