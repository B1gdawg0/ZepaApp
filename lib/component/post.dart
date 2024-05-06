import 'package:flutter/material.dart';

class Post extends StatefulWidget{
  Post({super.key});

  @override
  State<Post> createState()=>_Post();
}

class _Post extends State<Post>{
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05, left: MediaQuery.of(context).size.width*0.05,top: 10),
            height: 200,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 230, 230, 230), borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/profile.jpeg"),fit: BoxFit.cover)),
                      height: 35,
                      width: 35,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 20,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(3))),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 30,top: 10),
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10,right: 10),
                      child: Icon(Icons.favorite,color: Colors.grey,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,right: 10),
                      child: Icon(Icons.comment, color: Colors.grey,),
                    ),
                  ],
                )
              ],
            ),
          );
  }
}