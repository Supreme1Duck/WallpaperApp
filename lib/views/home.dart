import 'package:flutter/material.dart';
import 'package:wallpapers/data/data.dart';
import 'package:wallpapers/model/categories.dart';
import 'package:wallpapers/widgets/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CategoriesModel> categories = new List();

  @override
  void initState() {
    categories = getCategories();
    super.initState();
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
      child: Stack(children : <Widget>[
          Container(
            child: Image.network(imageUrl),
          ),

          Container(
            child: Text(name,)
          )
      ]),
    );
  }
}

