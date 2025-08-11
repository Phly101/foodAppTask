import 'package:flutter/material.dart';
import 'package:task/product_detail.dart';

class CardItem extends StatefulWidget {
  final String? imageUrl;
  final String? price;
  final String? name;
  final String? weight;
  final bool? isAdd;
  final bool? isNew;
  final bool? isViewed;
  final String? percentage;
  final Color? color;
  final Color? textColor;
  final int initialValue;
  final int minValue;
  final int maxValue;

  const CardItem({
    super.key,
    this.imageUrl,
    this.name,
    this.isAdd,
    this.price,
    this.weight,
    this.percentage,
    this.isNew,
    this.color,
    this.textColor,
    this.isViewed,
    this.initialValue = 1,
    this.minValue = 1,
    this.maxValue = 99,
  });

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  late int _currentValue;
  bool isClicked =false;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  void increment() {
    setState(() {
      if (_currentValue < widget.maxValue) {
        _currentValue++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (_currentValue > widget.minValue) {
        _currentValue--;
      }
    });
  }

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
                child: MaterialButton(onPressed: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetail()));
                },

                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: height * 0.20, // 20% of height
                        backgroundColor: widget.color,
                      ),
                      Positioned(
                        bottom: -height * 0.025, // ~5% below circle
                        left: width * 0.030, // ~3% from left
                        child: CircleAvatar(
                          radius: height * 0.16, // 16% of height
                          backgroundColor: Colors.transparent,
                          child: Image.asset(widget.imageUrl!),
                        ),
                      ),
                    ],
                  ),)
              ),

              //  Loved icon
              Positioned(
                top: height * 0.001, // 4% from top
                right: width * 0.005, // 5.5% from right
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isClicked= !isClicked;
                    });
                  },
                  icon: isClicked
                      ? Image.asset("assets/images/heartFill.png", scale: 0.8)
                      : Image.asset("assets/images/heart.png", scale: 0.8),
                ),
              ),
              widget.isViewed!
                  ? Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: width * 0.2,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                          color: widget.color!.withValues(alpha: 0.6),
                        ),
                        child: widget.isNew!
                            ? Text(
                                "New",
                                style: TextStyle(color: widget.textColor),
                              )
                            : Text(
                                widget.percentage!,
                                style: TextStyle(color: widget.textColor),
                              ),
                      ),
                    )
                  : Container(),

              //  Price
              Positioned(
                bottom: height * 0.32, // 32% from bottom
                child: Text(
                  widget.price!,
                  style: const TextStyle(color: Color(0xFF6BC51E)),
                ),
              ),

              //  Name
              Positioned(
                bottom: height * 0.24,
                child: Text(
                  widget.name!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              //  Weight
              Positioned(
                bottom: height * 0.16,
                child: Text(
                  widget.weight!,
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
              widget.isAdd!
                  ? Positioned(
                      top: height * 0.8,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              color: Color(0xFF6BC51E),
                              onPressed: decrement,
                            ),
                          ),

                          Text('$_currentValue'),

                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: IconButton(
                              icon: Icon(Icons.add),
                              color: Color(0xFF6BC51E),
                              onPressed: increment,
                            ),
                          ),
                        ],
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
                          Text(widget.isAdd! ? "" : "Add to cart"),
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
