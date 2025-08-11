import 'package:flutter/material.dart';
import 'package:task/category_item.dart';
import 'package:task/screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});



  @override
  Widget build(BuildContext context) {
    List<CategoryItem> girdItems=[
      CategoryItem(imageUrl: "assets/images/Group 65.png",inGridPage: true,needContainer: true,),
      CategoryItem(imageUrl: "assets/images/Group 64.png",inGridPage: true,needContainer: true,),
      CategoryItem(imageUrl: "assets/images/Group 63.png",inGridPage: true,needContainer: true,),
      CategoryItem(imageUrl: "assets/images/Group 62.png",inGridPage: true,needContainer: true,),
      CategoryItem(imageUrl: "assets/images/Group 61.png",inGridPage: true,needContainer: true,),
      CategoryItem(imageUrl: "assets/images/Group 60.png",inGridPage: true,needContainer: true,),
      CategoryItem(imageUrl: "assets/images/Group 66.png",inGridPage: true,needContainer: true,),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Screen()));
          },
          icon: Image.asset("assets/images/backArrow.png"),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/icon.png"),
        )],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
          child: GridView.builder(


              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,

            ),
            itemCount: girdItems.length,
            itemBuilder: (context,index){
                return girdItems[index];
            },

          ),
        ),
      ),
    );
  }
}
