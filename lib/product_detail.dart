import 'package:flutter/material.dart';

import 'package:task/screen.dart';

class ProductDetail extends StatefulWidget {
  final int initialValue;
  final int minValue;
  final int maxValue;

  const ProductDetail({
    super.key,
    this.initialValue = 1,
    this.minValue = 1,
    this.maxValue = 99,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantity = 1;
  bool isLoved = false;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialValue;
  }

  void increment() {
    setState(() {
      if (quantity < widget.maxValue) {
        quantity++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (quantity > widget.minValue) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String productDetail =
        "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing";
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Color(0xFFF2FFE6),
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => Screen()));
          },
          icon: Image.asset("assets/images/backArrow.png"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.infinity,
                height: 380,
                color: Colors.white,
              ),
              Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                  color: Color(0xFFF2FFE6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(160),
                    bottomRight: Radius.circular(160),
                  ),
                ),
              ),
              Image.asset("assets/images/lime.png"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
            child: ListTile(
              leading: Text(
                "\$2.22",
                style: TextStyle(
                  color: Color(0xFF28B446),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    isLoved = !isLoved;
                  });
                },
                icon: isLoved
                    ? Image.asset("assets/images/heartFill.png", scale: 0.8)
                    : Image.asset("assets/images/heart.png", scale: 0.8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 0.0, bottom: 5.0),
            child: Text(
              "Organic Lemons",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 0.0, bottom: 5.0),
            child: Text("1.50lbs", style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 0.0, bottom: 5.0),
            child: Row(
              children: [
                Text(
                  "4.5",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/startFilled.png"),
                Image.asset("assets/images/startFilled.png"),
                Image.asset("assets/images/startFilled.png"),
                Image.asset("assets/images/startFilled.png"),
                Image.asset("assets/images/halfFilledStar.png"),
                Text("(89 reviews)", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.grey, fontSize: 16),
              children: [
                TextSpan(text: productDetail),

                TextSpan(
                  text: " more",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
              ),
              Positioned(
                right: 10,
                top: 1,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: decrement,
                      icon: Icon(
                        Icons.remove,
                        color: Color(0xFF6CC51D),
                        size: 25,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: Colors.grey.withValues(alpha: 0.6),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: Text(
                        "$quantity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: Colors.grey.withValues(alpha: 0.6),
                    ),
                    IconButton(
                      onPressed: increment,
                      icon: Icon(Icons.add, color: Color(0xFF6CC51D), size: 25),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 15,
                top: 10,

                child: Text(
                  "Quantity",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                    colors: [Color(0xFFAEDC81), Color(0xFF6CC51D)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              Text(
                "Add to cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Positioned(
                  right: 10,
                  child: Image.asset("assets/images/bag.png",scale: 0.9,)),
            ],
          ),
        ],
      ),
    );
  }
}

// ListTile(
// leading: Text("Quantity",style: TextStyle(color: Colors.grey,fontSize: 16),),
// trailing: SizedBox(
// height: 50,
// width: 120,
// child: Row(
// children: [
// IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Color(0xFF6CC51D),size: 25,)),
// Container(width: 1,color: Colors.grey),
// Padding(
// padding: const EdgeInsets.all(10.0),
// child: Text("3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
// ),
// Container(width: 1,color: Colors.grey),
// IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Color(0xFF6CC51D),size: 25,)),
// ],
// ),
// ),
// )
