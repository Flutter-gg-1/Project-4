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
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  Future<void> _simulateLoading() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? _buildShimmerEffect() : _buildProductCard(context);
  }

  Widget _buildShimmerEffect() {
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

  Widget _buildProductCard(BuildContext context) {
    return     GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              productName:widget. productName,
              price:widget. price,
              imageUrl:widget. imageUrl,
              desc:widget.desc,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 50, 8, 8),
        child: Container(
          width: 160, // Set a fixed width
          height: 700, // Increased height to make the container taller
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
                  padding: const EdgeInsets.only(
                      top: 50, left: 10, right: 10), // Adjusted padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                             widget. productName,
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
                     
                      // Spacer(), // Pushes the price and buttons to the bottom
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
                top: -60, // Adjusted top position for the image
                left: -20,
                right: 0,
                child: Image.asset(
                  widget.imageUrl,
                  height: 120, // Adjusted height as needed
                  // fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



