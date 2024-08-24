import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:e_commerce_ui/custom_widgets/appColors.dart';
import 'package:e_commerce_ui/product_details.dart';

class ProductCard extends StatefulWidget {
  final String productName;
  final int price;
  final String imageUrl;
  final String desc;

  const ProductCard({
    required this.productName,
    required this.price,
    required this.imageUrl,
    required this.desc,
  });

  @override
  ProductCardState createState() => ProductCardState();
}

class ProductCardState extends State<ProductCard> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    simulateLoading();
  }

  Future<void> simulateLoading() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? buildShimmerEffect() : buildProductCard(context);
  }

  Widget buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 50, 8, 8),
        child: Container(
          width: 160,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              SizedBox(height: 10),
              Container(
                height: 16,
                width: 100,
                color: Colors.grey[300],
              ),
              SizedBox(height: 10),
              Container(
                height: 16,
                width: 60,
                color: Colors.grey[300],
              ),
              SizedBox(height: 10),
              Container(
                height: 16,
                width: 40,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              productName: widget.productName,
              price: widget.price,
              imageUrl: widget.imageUrl,
              desc: widget.desc,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 50, 8, 8),
        child: Container(
          width: 160,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              widget.productName,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: AppColors.spicyMix,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${widget.price}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 26,
                              color: AppColors.spicyMix,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -60,
                left: -20,
                right: 0,
                child: Image.asset(
                  widget.imageUrl,
                  height: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
