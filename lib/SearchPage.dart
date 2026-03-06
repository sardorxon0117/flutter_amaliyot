import 'package:flutter/material.dart';

import 'Drawer1.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Search recipes..."
              ),
            ),
            SizedBox(height: 80,),
            Icon(Icons.search_rounded, size: 120, color: Colors.black26,),
            Text("Search for your favourite recipes", textAlign: TextAlign.center,style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w500, fontSize: 18),),
          ],
        ),
      ),
    );
  }
}
