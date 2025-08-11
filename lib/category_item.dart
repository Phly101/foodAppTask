import 'package:flutter/material.dart';
import 'package:task/vegeis_screen.dart';

import 'category_screen.dart';

class CategoryItem extends StatelessWidget {
  final String? imageUrl;
  final bool? inGridPage;
  final bool? needContainer;


  const CategoryItem({super.key,this.imageUrl, this.inGridPage,this.needContainer});

  @override
  Widget build(BuildContext context) {
    return needContainer! ? Container(
      width: 120,
      height: 120,
      color: Colors.white,
      child: IconButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,

        ),
        onPressed: inGridPage! ? (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VegeisScreen()));
        }:


            (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CategoryScreen()));
        }
        ,


        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imageUrl!,scale: 0.8,),
        ),),
    ):
    IconButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,

      ),
      onPressed: inGridPage! ? (){}:


          (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CategoryScreen()));
      }
      ,


      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(imageUrl!,scale: 0.8,),
      ),);
  }
}
