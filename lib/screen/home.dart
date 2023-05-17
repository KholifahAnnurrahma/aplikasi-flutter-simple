import 'package:aplica_/screen/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00BCD4),
        elevation: 2,
        title: Text("Blog"),
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.notifications_rounded)),
        ],
      ),
      drawer: SideMenu(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF00BCD4),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search. . .",
                  hintStyle: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,
                  ),
                  prefixIcon: Icon(
                    Icons.search_rounded, color: Colors.white, size: 30,
                  ),
                ),
              ),
            ),
          ],
          
        ), 
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF00BCD4),
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.home), 
            label: "Beranda", 
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.person_2_rounded),
            label: "Profile",
          ),
        ]),
    );
  }
}

class ListViwe extends StatelessWidget {
  const ListViwe({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/"),
        ),
      ),

    );
  }
}