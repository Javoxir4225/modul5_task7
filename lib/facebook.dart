import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _animation = Tween(begin: 2.0, end: 0.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });

    super.initState();
  }

  int sum = 0;
  bool _setlokol = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.black,
              pinned: true,
              floating: true,
              snap: true,
              title: const Text(
                "facebook",
                style: TextStyle(color: Colors.blue, fontSize: 28),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 28,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SliverPersistentHeader(
              delegate: Tab_Bar(),

            
              floating: false,
              pinned: true,
            ),
            SliverPersistentHeader(
              delegate: SliverTabBar(),
              floating: false,
              pinned: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 180,
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.grey.shade700,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Container(
                              color: Colors.black,
                              padding: const EdgeInsets.only(right: 8, left: 8),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  _istoriyes(
                                    "assets/images/foto5.jpg",
                                    "assets/images/foto1.jpg",
                                    "User Five",
                                  ),
                                  _istoriyes(
                                    "assets/images/foto6.jpg",
                                    "assets/images/foto0.jpg",
                                    "User Four",
                                  ),
                                  _istoriyes(
                                    "assets/images/foto7.jpg",
                                    "assets/images/foto2.jpg",
                                    "User Three",
                                  ),
                                  _istoriyes(
                                    "assets/images/foto8.jpg",
                                    "assets/images/foto3.jpg",
                                    "User Two",
                                  ),
                                  _istoriyes(
                                    "assets/images/foto3.jpg",
                                    "assets/images/foto4.jpg",
                                    "User one",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _pos(
                    "assets/images/foto3.jpg",
                    "assets/images/foto8.jpg",
                    "assets/images/foto6.jpg",
                    "User Two",
                    "2.5K",
                    "400 Coments",
                  ),
                  _pos(
                    "assets/images/foto0.jpg",
                    "assets/images/foto10.jpg",
                    "assets/images/foto5.jpg",
                    "User Five",
                    "3.5K",
                    "650 Coments",
                  ),
                  _pos(
                    "assets/images/foto2.jpg",
                    "assets/images/foto11.jpg",
                    "assets/images/foto7.jpg",
                    "User Three",
                    "1.3K",
                    "250 Coments",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _istoriyes(
    String _images1,
    String _images2,
    String _text1,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => _oyna(_images1),
              ),
            );
          });
        },
        child: Container(
          height: 170,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(
                  _images1,
                ),
                fit: BoxFit.cover),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(_images2),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  _text1,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _pos(
    String _images3,
    String _images4,
    String _images5,
    String _text2,
    String _text3,
    String _text4,
  ) {
    return Container(
      width: double.infinity,
      height: 390,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(_images3),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _text2,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text(
                      "1 hr ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                  size: 36,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "All the Loren Inpsum generators on the internet tend to repeat predefined.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                sum++;
                if (sum > 2) {
                  sum = 0;
                }

                print(" ==== $sum");
              });
            },
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(
                      _images4,
                    ),
                    fit: BoxFit.cover,
                    height: 210,
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage(
                      _images5,
                    ),
                    fit: BoxFit.cover,
                    height: 210,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              children: [
                Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 10,
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28, top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: CircleAvatar(
                          backgroundColor: sum == 2 ? Colors.white : Colors.red,
                          radius: 10,
                          child: sum == 2
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 14,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 14,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    _text3,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    _text4,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _oyna(String _images6) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Image(
            image: AssetImage(_images6),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Tab_Bar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.black,
      
      height: 100,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/foto1.jpg"),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextField(
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  color: Colors.grey,
                ),
                decoration: InputDecoration(
                  hoverColor: Colors.grey,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  fillColor: Colors.black,
                  // iconColor: Colors.grey,
                  filled: true,
                  hintText: "What's on your mind?",
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100;

  @override
  // TODO: implement minExtent
  double get minExtent => 66;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class SliverTabBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.black,
      child: Padding(
        
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _getTab(
              Icons.video_call,
              Colors.red,
              "Live",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: VerticalDivider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            _getTab(
              Icons.photo,
              Colors.green,
              "Photo",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: VerticalDivider(
                thickness: 1,
                color: Colors.grey,
                width: 8,
              ),
            ),
            _getTab(
              Icons.location_on,
              Colors.red,
              "Chack in",
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 56;

  @override
  double get minExtent => 56;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  _getTab(IconData icon, Color iconColor, String text) {
    return Expanded(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
