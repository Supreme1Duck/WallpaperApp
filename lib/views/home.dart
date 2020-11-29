import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wallpapers/data/data.dart';
import 'package:wallpapers/model/categories.dart';
import 'package:wallpapers/widgets/widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CategoriesModel> categories = new List();
  String apiKey = "563492ad6f9170000100000115a2c98a4a604136ac38bce15774b840";

  @override
  void initState() {
    categories = getCategories();
    getTrendingWallpapers();
    super.initState();
  }

  getTrendingWallpapers() async{
    var response = await http.get("https://api.pexels.com/v1/curated?per_page=1",
      headers: {
        "Authorization" : apiKey
      });
    //print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: brandName("Hub"),
      ),
      body: Container(
          child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(color: Color(0xfff5f8fd), borderRadius: BorderRadius.circular(30)),
            child: Row(children: <Widget>[
              Expanded(
                  child: TextField(
                decoration: InputDecoration(border: InputBorder.none ,hintText: "search wallpapers"),
              )),
              Icon(Icons.search),
            ])),

            SizedBox(height: 16,),

            Container(height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal : 24),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return CategoriesTile(
                  name : categories[index].categoriesName,
                  imageUrl : categories[index].imgUrl
                );
              })
          )])),
    );
  }
}

class CategoriesTile extends StatelessWidget {

  String imageUrl;
  String name;

  CategoriesTile({@required this.name, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right : 4),
      child: Stack(children : <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageUrl, height: 50, width: 100, fit: BoxFit.cover),
          ),

          Container(
            color: Colors.black26,
            height: 50,
            width: 100,
            alignment: Alignment.center,
            child: Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500))
          )
      ]),
    );
  }
}

