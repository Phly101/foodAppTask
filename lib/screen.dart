import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/card_item.dart';
import 'package:task/category_item.dart';

import 'category_screen.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        backgroundColor: CupertinoColors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        hintText: 'search keywords',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: Image.asset(
                          "assets/icons/customize.png",
                          scale: 20,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 380,
                    height: 300,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: Image.asset(
                            "assets/images/Mask Group.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          left: 35,
                          top: 150,
                          child: Text(
                            """20% off on your 
            first purchase """,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    trailing: IconButton(
                      padding: EdgeInsets.only(left: 20),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CategoryScreen(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryItem(
                          imageUrl: "assets/images/Group 65.png",
                          inGridPage: false,
                          needContainer: false,
                        ),
                        CategoryItem(
                          imageUrl: "assets/images/Group 64.png",
                          inGridPage: false,
                          needContainer: false,
                        ),
                        CategoryItem(
                          imageUrl: "assets/images/Group 63.png",
                          inGridPage: false,
                          needContainer: false,
                        ),
                        CategoryItem(
                          imageUrl: "assets/images/Group 62.png",
                          inGridPage: false,
                          needContainer: false,
                        ),
                        CategoryItem(
                          imageUrl: "assets/images/Group 61.png",
                          inGridPage: false,
                          needContainer: false,
                        ),
                        CategoryItem(
                          imageUrl: "assets/images/Group 60.png",
                          inGridPage: false,
                          needContainer: false,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Featured products",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 800,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.9,
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
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF6BC51E),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),

              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),

              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),

              label: "Cart",
            ),
          ],
        ),
      ),
    );
  }
}
