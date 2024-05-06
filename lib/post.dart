import 'package:chat/component/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllPost extends StatefulWidget{
  AllPost({super.key});

  @override
  State<AllPost> createState()=>_AllPost();
}

class _AllPost extends State<AllPost>{
  int currentIndex = 0;
  List<BottomNavigationBarItem> listMenuItem = [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.group_add_outlined),label: "Friends",),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text("Zepa"),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20.0),
              height: 40,
              width: MediaQuery.of(context).size.width*0.6,
              child: TextField(
                decoration: InputDecoration(suffixIcon: GestureDetector(onTap: (){print("hit");},child: Icon(Icons.search),),labelText: "Search",filled: true,fillColor: Colors.transparent,border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)))),
                textAlignVertical: TextAlignVertical.top,
              ),
            ),

          Container(
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/profile.jpeg"),fit: BoxFit.cover)),
            height: 40,
            width: 40,
          )
        ],
      ),
      body: ListView(
        children: [
          Post(),
          Post(),
          Post(),
          Post(),
          Post()
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:  Icon(Icons.add),backgroundColor: Color.fromARGB(255, 57, 92, 199),foregroundColor: Colors.white,),
      bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color.fromARGB(255, 57, 92, 199),
            type: BottomNavigationBarType.fixed,
            items: listMenuItem,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          )
    );
  }
}