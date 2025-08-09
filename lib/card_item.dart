import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String? imageUrl;
  final String? price;
  final String? name;
  final String? weight;
  final bool? isLoved;
  final bool? isAdd;
  final bool? isNew;
  final bool? isViewed;
  final String? percentage;
  final Color? color;
  final Color? textColor;

  const CardItem({
    super.key,
    this.imageUrl,
    this.name,
    this.isAdd,
    this.isLoved,
    this.price,
    this.weight,
    this.percentage,
    this.isNew,
    this.color,
    this.textColor,
    this.isViewed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return Stack(
            alignment: Alignment.center,
            children: [
              //  Fruit image + circle background
              Positioned(
                top: height * 0.1, // 8% from top
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: height * 0.20, // 20% of height
                      backgroundColor: color,
                    ),
                    Positioned(
                      bottom: -height * 0.025, // ~5% below circle
                      left: width * 0.030, // ~3% from left
                      child: CircleAvatar(
                        radius: height * 0.16, // 16% of height
                        backgroundColor: Colors.transparent,
                        child: Image.asset(imageUrl!),
                      ),
                    ),
                  ],
                ),
              ),

              //  Loved icon
              Positioned(
                top: height * 0.04, // 4% from top
                right: width * 0.055, // 5.5% from right
                child: isLoved!
                    ? Image.asset(
                        "assets/icons/Union.png",
                        scale: 6,
                        color: Colors.redAccent,
                      )
                    : Image.asset("assets/icons/loveIcon.png", scale: 1),
              ),
              isViewed!
                  ? Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: width * 0.2,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                          color: color!.withValues(alpha: 0.6),
                        ),
                        child: isNew!
                            ? Text("New", style: TextStyle(color: textColor))
                            : Text(
                                percentage!,
                                style: TextStyle(color: textColor),
                              ),
                      ),
                    )
                  : Container(),

              //  Price
              Positioned(
                bottom: height * 0.32, // 32% from bottom
                child: Text(
                  price!,
                  style: const TextStyle(color: Color(0xFF6BC51E)),
                ),
              ),

              //  Name
              Positioned(
                bottom: height * 0.24,
                child: Text(
                  name!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              //  Weight
              Positioned(
                bottom: height * 0.16,
                child: Text(
                  weight!,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),

              //  Divider line
              Positioned(
                bottom: height * 0.16,
                child: Container(
                  width: width * 1.1, // slightly wider than card
                  height: height * 0.008, // thin line
                  color: Colors.grey,
                ),
              ),

              //  Add to cart row
              isAdd!
                  ? Positioned(
                      bottom: height * 0.01,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0,left: 10.0),
                              child: Icon(Icons.minimize, color: Color(0xFF6BC51E)),
                            ),

                            Text("1"),

                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.add, color: Color(0xFF6BC51E)),
                            ),


                          ],
                        ),
                      ),
                    )
                  : Positioned(
                      bottom: height * 0.04, // 4% from bottom
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopping_bag,
                            color: Color(0xFF6BC51E),
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ), // 4% of width as spacing
                          Text(isAdd! ? "" : "Add to cart"),
                        ],
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}
