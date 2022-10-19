import 'package:flutter/material.dart';

class DWED extends StatefulWidget {
  const DWED({super.key});

  @override
  State<DWED> createState() => _DWEDState();
}

class _DWEDState extends State<DWED> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 46,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Shape.jpg",
                    color: Colors.blue,
                    height: 35,
                    width: 35,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "DWED",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //  Expanded(
                  //   child: TextField(
                  //     onTap: (){
                  //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SearchOyna(),),);
                  //     },
                  //     decoration: const InputDecoration(
                  //       prefixIconColor: Colors.black,
                  //       suffixIcon: Icon(
                  //           Icons.search,
                  //           size: 36,
                  //           color: Colors.black,
                  //         ),

                  //         border:
                  //             OutlineInputBorder(borderSide: BorderSide.none)),
                  //   ),
                  // ),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const SearchOyna(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                  size: 36,
                  color: Colors.black,
                ),
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.blue,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text("Offers"),
                ),
                Tab(
                  child: Text("Organizations"),
                ),
                Tab(
                  child: Text("Streams"),
                ),
                Tab(
                  child: Text("People"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag0.png",
                      "Phones, gadgets, accessories",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag1.png",
                      "Men's Fashion",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag2.png",
                      "TV, Appliances, Electronics",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag3.png",
                      "Beauty, Health, Grocery",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag4.png",
                      "Gift Cards & Mobile Recharges",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag4.png",
                      "Women's Fashion",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag0.png",
                      "Parenting",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag4.png",
                      "Businees",
                      "1200 products",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag5.png",
                      "Davlat tibbiyot markazi",
                      "34 Organizations",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag6.png",
                      "IT",
                      "34 Organizations",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag7.png",
                      "Digital",
                      "34 Organizations",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag8.png",
                      "Auto",
                      "34 Organizations",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag9.png",
                      "Government",
                      "34 Organizations",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    _products(
                      "assets/images/Imag10.png",
                      "Education",
                      "34 Organizations",
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 12,
                  // spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconData(Icons.home, 0),
                iconData(Icons.apps, 1),
                iconData(Icons.ondemand_video_sharp, 2),
                iconData(Icons.shopping_bag_outlined, 3),
                Image.asset(
                  "assets/images/Vector.png",
                  height: 35,
                  width: 35,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _products(String _images, String _text, String _text1) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            _images,
            height: 70,
            width: 70,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _text1,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  iconData(IconData Isicon, int x) {
    return IconButton(
      onPressed: () {
        setState(() {
          index = x;
        });
      },
      icon: Icon(
        Isicon,
        color: index == x ? Colors.blue : Colors.black,
      ),
    );
  }
}

class SearchOyna extends StatefulWidget {
  const SearchOyna({super.key});

  @override
  State<SearchOyna> createState() => _SearchOynaState();
}

class _SearchOynaState extends State<SearchOyna>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween(
      begin: const Offset(1.0, 2.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceIn),
    );
    _animationController.forward();
    super.initState();
  }

  bool lokol = false;
  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const DWED(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        title: TextField(
          onTap: () {
            setState(() {
              lokol = !lokol;
            });
          },
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey.shade400),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
      body: lokol
          ? SlideTransition(
              position: _animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Recentm searches",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              lokol = !lokol;
                            });
                          },
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _textBottom("Iphone 12 pro", 160),
                  _textBottom("Shox medical hospital", 215),
                  _textBottom("Umida Asqarova", 180),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Recentm searches",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: const [
                            Icon(
                              Icons.local_fire_department_outlined,
                              color: Colors.amber,
                            ),
                            Text("Iphone 14 pro"),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text("Playstation 6"),
                        const SizedBox(height: 16),
                        const Text("Pepsi"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }

  _textBottom(String label, double size) {
    return TextButton.icon(
      onPressed: () {},
      style: TextButton.styleFrom(
        // shadowColor: Colors.black,
        foregroundColor: Colors.black87,
        fixedSize: Size(size, 40),
      ),
      icon: const Icon(Icons.schedule),
      label: Text(
        label,
      ),
    );
  }
}
