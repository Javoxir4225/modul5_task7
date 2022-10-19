import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 129, 151),
        drawer: const Drawer(),
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: Color.fromARGB(255, 12, 129, 151),
              title: Image(
                image: AssetImage(
                  "assets/images/amazon2.png",
                ),
                height: 30,
                width: 100,
                color: Colors.white,
              ),
              actions: [
                Icon(
                  Icons.keyboard_voice_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(width: 10),
              ],
            ),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: TexTField(),
            ),
            SliverPersistentHeader(
              //  pinned: true,
              // floating: false,

              delegate: botTom(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 223, 223, 223),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Container(
                                  color: Colors.white,
                                  height: 120,
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/yukMoshina.jpg")),
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(60),
                                              ),
                                              color: Color.fromARGB(
                                                  255, 32, 204, 238)),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "We ship 45million\nproducts",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: Container(
                                  color: Colors.white,
                                  height: 160,
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Sign in for the best experience",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 255, 152, 15),
                                            fixedSize: const Size(340, 50)),
                                        child: const Text(
                                          "Sign in",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Create an account",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: Container(
                                  color: Colors.white,
                                  height: 300,
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Deal of the Day",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Image.asset(
                                          "assets/images/kompyuter.jpg"),
                                      const SizedBox(height: 6),
                                      const Text(
                                        "Up to 31% off APC UPC Battery Back\n\$10.99 - \$79.9",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: Container(
                                  color: Colors.white,
                                  height: 300,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/kofe.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/3.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/kk.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/facebook.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Container(
                                  color: Colors.white,
                                  height: 420,
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Top products in Camera",style: TextStyle(color: Colors.black,fontSize: 20),),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(child: Image.asset("assets/images/kompyuter.jpg",fit: BoxFit.cover,))
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                              Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/3.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/kofe.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SliverPersistentHeader(
            //   delegate: stack(),
            // ),
          ],
        ),
      ),
    );
  }
}

class stack extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.grey,
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  color: Colors.white,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  color: Colors.white,
                  height: 140,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 300;

  @override
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class TexTField extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color.fromARGB(255, 12, 129, 151),
      child: const Padding(
        // padding: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            hintText: "What are you looking for?",
            suffixIcon: Icon(
              Icons.camera_alt,
              color: Colors.blue,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 66;

  @override
  // TODO: implement minExtent
  double get minExtent => 46;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}

class botTom extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 46,
      width: double.infinity,
      color: const Color.fromARGB(255, 96, 124, 139),
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: const [
          Icon(
            Icons.location_on,
            color: Colors.white70,
          ),
          Text(
            "Deliver to Korea, Republic of",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 46;

  @override
  double get minExtent => 46;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
