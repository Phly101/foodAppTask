import 'package:flutter/material.dart';
import 'package:task/card_item.dart';
import 'package:task/category_screen.dart';

class VegeisScreen extends StatefulWidget {
  const VegeisScreen({super.key});

  @override
  State<VegeisScreen> createState() => _VegeisScreenState();
}

class _VegeisScreenState extends State<VegeisScreen> {
  List<CardItem> cardItems = [
    CardItem(
      imageUrl: "assets/icons/transparent-peach-png-23.png",
      name: "Peaches",
      price: "\$8.00",
      weight: "dozen",
      isAdd: false,

      color: Color(0xFFFECFBB),
      isViewed: false,
    ),
    CardItem(
      imageUrl: "assets/icons/avocado.png",
      name: "Avocado",
      price: "\$7.00",
      weight: "2.0 lbs",
      isAdd: true,

      color: Color(0xFFFDFFDA),
      isViewed: true,
      textColor: Color(0xFFE5C47D),
      isNew: true,
    ),
    CardItem(
      imageUrl: "assets/icons/pineapple.png",
      name: "Pineapple",
      price: "\$9.90",
      weight: "1.50 lbs",
      isAdd: false,
      color: Color(0xFFFECFBB),
      isViewed: false,
    ),
    CardItem(
      imageUrl: "assets/icons/grapes.png",
      name: "Black Grapes",
      price: "\$7.05",
      weight: "5.0 lbs",
      isAdd: false,

      color: Color(0xFFFEE0EC),
      isViewed: true,
      isNew: false,
      textColor: Color(0xFFEAA6A7),
      percentage: "-10%",
    ),
    CardItem(
      imageUrl: "assets/icons/pomegranate.webp",
      name: "Pomegranate",
      price: "\$2.09",
      weight: "1.50 lbs",
      isAdd: true,

      color: Color(0xFFFFE3E2),
      isViewed: true,
      textColor: Color(0xFFE5C47D),
      isNew: true,
    ),
    CardItem(
      imageUrl: "assets/icons/Broccoli.png",
      name: "Fresh Broccoli",
      price: "\$3.00",
      weight: "1 Kg",
      isAdd: false,
      color: Color(0xFFD0FFD0),
      isViewed: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(

          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => CategoryScreen()));
          },
          icon: Image.asset("assets/images/backArrow.png"),
        ),
        centerTitle: true,
        title: Text(
          "Vegetables",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/icon.png"),
        )],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemCount: cardItems.length,
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            itemBuilder: (context, index) {
              return cardItems[index];
            },
          ),
        ),
      ),
    );
  }
}
