import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shopping_shoes_app/data/app_bar.dart';
import 'package:shopping_shoes_app/data/global_variabels.dart';
import 'package:shopping_shoes_app/data/shoes_data.dart';
import 'package:shopping_shoes_app/model/shoes_model.dart';
import 'package:shopping_shoes_app/screen/my_cart_screen.dart';
import 'package:shopping_shoes_app/screen/product_screen.dart';
import 'package:shopping_shoes_app/theme/custom_app_theme.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexCat = 0;
  int selectedIndex = 1;
  late ShoesModel model;
  bool isLoading = true;
  Icon unSelectedFav = const Icon(
    Icons.favorite_border_outlined,
    color: Colors.white,
  );
  Icon selectedFav = const Icon(
    Icons.favorite_border_outlined,
    color: Colors.red,
  );

  bool isLike = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        // Check if the widget is still in the widget tree
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffcb3759), width: 5),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.account_circle,
                      size: 80,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome back :)",
                    style: TextStyle(
                        color: const Color(0xffcb3759).withOpacity(0.5)),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                var route = MaterialPageRoute(
                    builder: (BuildContext context) => const MyCartScreen());
                Navigator.of(context).push(route);
              },
              title: const Text(
                "My cart",
                style: TextStyle(
                    color: Color(0xffcb3759),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              leading: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xffcb3759),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => {
                          _scaffoldKey.currentState!.openDrawer(),
                        },
                    icon: const Icon(Icons.menu)),
                Text(
                  "Discover",
                  style: AppThemes.homeAppBar,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
          ),
          Row(
            children: [
              categoryView(size),
            ],
          ),
          headerProductsView(size),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "More",
                  style: AppThemes.homeMoreText,
                ),
              ),
              Icon(Icons.arrow_forward)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width,
                height: size.height / 3.4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allShoes.length,
                    itemBuilder: (context, index) {
                      ShoesModel model = allShoes[index];
                      return isLoading
                          ? Shimmer(
                              child: Container(
                                  margin: const EdgeInsets.all(30),
                                  width: size.width * 0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xff4c77cf))),
                            )
                          : GestureDetector(
                              onTap: () {
                                var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ProductScreen(
                                          itemModel: model,
                                        ));
                                Navigator.of(context).push(route);

                                setState(() {
                                  bgProductDetailsView = model.modelColor;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(30),
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 60,
                                      left: 30,
                                      child: RotationTransition(
                                        turns: const AlwaysStoppedAnimation(
                                            -20 / 360),
                                        child: Image.asset(
                                          model.img,
                                          width: 100,
                                        ),
                                      )
                                          .animate()
                                          .fadeIn(duration: 720.ms)
                                          .slide(),
                                    ),
                                    Positioned(
                                      right: 4,
                                      child: LikeButton(
                                        likeBuilder: (isTapped) {
                                          return Icon(
                                            isTapped
                                                ? Icons.favorite
                                                : Icons
                                                    .favorite_border_outlined,
                                            color: isTapped
                                                ? Colors.redAccent
                                                : Colors.grey,
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20))),
                                      child: RotatedBox(
                                        quarterTurns: -1,
                                        child: Text(
                                          "New",
                                          style: AppThemes.txtStyleWhite,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 35,
                                      left: 25,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 120,
                                            child: Text(
                                              "${model.name} ${model.model}",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: model.modelColor,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            )
                                                .animate()
                                                .fadeIn(duration: 720.ms)
                                                .slide(),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 120,
                                            child: Text(
                                              "${model.price} SAR",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: model.modelColor,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            )
                                                .animate()
                                                .fadeIn(duration: 730.ms)
                                                .slide(),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Row headerProductsView(Size size) {
    return Row(
      children: [
        Container(
          width: size.width / 12,
          height: size.height / 2.6,
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: RotatedBox(
            quarterTurns: -1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: special.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Text(
                        special[index],
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                          fontSize: selectedIndex == index ? 22 : 18,
                          color: selectedIndex == index
                              ? Colors.redAccent.shade400
                              : Colors.black12,
                        )),
                      ),
                    ),
                  );
                }).animate().fadeIn(delay: 4600.ms),
          ),
        ),
        isLoading == true
            ? Shimmer(
                child: Container(
                  width: size.width * 0.81,
                  height: size.height * 0.4,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedIndexCat == 0
                          ? allNikeShoes.length
                          : allAdidasShoes.length,
                      itemBuilder: (context, index) {
                        selectedIndexCat == 0
                            ? model = allNikeShoes[index]
                            : model = allAdidasShoes[index];

                        return Container(
                          margin: EdgeInsets.all(size.height * 0.01),
                          width: size.width / 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff4c77cf),
                          ),
                        );
                      }),
                ),
              )
            : Container(
                width: size.width * 0.81,
                height: size.height * 0.4,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: selectedIndexCat == 0
                        ? allNikeShoes.length
                        : allAdidasShoes.length,
                    itemBuilder: (context, index) {
                      selectedIndexCat == 0
                          ? model = allNikeShoes[index]
                          : model = allAdidasShoes[index];

                      return GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (BuildContext context) => ProductScreen(
                                    itemModel: allNikeShoes[index],
                                  ));
                          Navigator.of(context).push(route);

                          setState(() {
                            bgProductDetailsView =
                                allNikeShoes[index].modelColor;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(size.height * 0.01),
                          width: size.width / 1.5,
                          child: Stack(
                            children: [
                              Container(
                                width: size.width / 1.81,
                                decoration: BoxDecoration(
                                    color: model.modelColor,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Text(
                                  model.name,
                                  style: AppThemes.homeProductName,
                                ).animate().fadeIn(duration: 600.ms).slide(),
                              ),
                              Positioned(
                                left: 10,
                                top: 40,
                                child: Text(
                                  model.model,
                                  style: AppThemes.homeProductModel,
                                ).animate().fadeIn(duration: 640.ms).slide(),
                              ),
                              Positioned(
                                left: 10,
                                top: 80,
                                child: Text(
                                  "${model.price.toString()} SAR",
                                  style: AppThemes.homeProductPrice,
                                ).animate().fadeIn(duration: 680.ms).slide(),
                              ),
                              Positioned(
                                  right: 0,
                                  top: 40,
                                  child: RotationTransition(
                                    turns:
                                        const AlwaysStoppedAnimation(-30 / 360),
                                    child: SizedBox(
                                      width: 250,
                                      height: 250,
                                      child: Image.asset(model.img),
                                    ),
                                  )).animate().fadeIn(duration: 700.ms).slide(),
                              const Positioned(
                                bottom: 10,
                                right: 55,
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                ),
                              ).animate(delay: 1000.ms).shake(),
                              Positioned(
                                right: 50,
                                top: 8,
                                child: LikeButton(
                                  likeBuilder: (isLiked) {
                                    return Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: isLiked
                                          ? Colors.redAccent
                                          : Colors.white,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
      ],
    );
  }

  SizedBox categoryView(Size size) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.05,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedIndexCat = index;
                setState(() {});
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Text(
                  categories[index],
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                    fontSize: selectedIndexCat == index ? 22 : 18,
                    color: selectedIndexCat == index
                        ? Colors.redAccent.shade400
                        : Colors.black12,
                  )),
                ),
              ),
            );
          }).animate().fadeIn(delay: 4600.ms),
    );
  }
}
