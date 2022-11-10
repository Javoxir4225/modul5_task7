import 'package:flutter/material.dart';

class MyInstagram extends StatefulWidget {
  const MyInstagram({super.key});

  @override
  State<MyInstagram> createState() => _MyInstagramState();
}

class _MyInstagramState extends State<MyInstagram> {
  bool setLokol = true;
  bool setLokol1 = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
            ),
            SizedBox(width: 24),
            Expanded(child: SizedBox()),
            Text(
              "Instagram",
              style: TextStyle(
                  color: Colors.white70, fontSize: 24, fontFamily: "Peralta"),
            ),
            Expanded(child: SizedBox()),
            Icon(
              Icons.live_tv_outlined,
              color: Colors.grey,
            ),
            SizedBox(width: 8),
            Icon(
              Icons.near_me_outlined,
              color: Colors.grey,
              size: 28,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14, top: 8),
                  child: Row(
                    children: const [
                      Text(
                        "Stories",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        "Watch All",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    height: 135,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _funk("assets/images/foto0.jpg", "Sylvester"),
                        _funk("assets/images/foto1.jpg", "Lavina"),
                        _funk("assets/images/foto2.jpg", "Jazmin"),
                        _funk("assets/images/foto4.jpg", "Jack"),
                        _funk("assets/images/foto3.jpg", "Lion"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _funk1(
              "assets/images/foto3.jpg", "assets/images/foto3.jpg", "Brianne"),
          _funk1("assets/images/foto0.jpg", "assets/images/foto0.jpg", "Henri"),
          _funk1(
              "assets/images/foto1.jpg", "assets/images/foto1.jpg", "Lavina"),
          _funk1("assets/images/foto4.jpg", "assets/images/foto4.jpg", "Jack"),
          _funk1("assets/images/foto2.jpg", "assets/images/foto2.jpg", "Lion"),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: _iconBottom(),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),),
      //   BottomNavigationBarItem(icon: Icon(Icons.search),),
      //   BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),),
      //   BottomNavigationBarItem(icon: Icon(Icons.favorite),),
      //   BottomNavigationBarItem(icon: Icon(Icons.person_outline),),
      // ],),
    );
  }

  _funk(String images, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 14),
      child: Column(
        children: [
          CircleAvatar(
            radius: 44,
            backgroundColor: Color.fromARGB(255, 133, 15, 154),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage(images),
                radius: 38,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  _funk1(
    String images2,
    String images3,
    String text1,
  ) {
    return Container(
      width: double.infinity,
      height: 380,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(images2),
                ),
                const SizedBox(width: 8),
                Text( 
                  text1,
                  style: TextStyle(color: Colors.grey),
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
          Image.asset(
            images3,
            fit: BoxFit.cover,
            height: 210,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      setLokol1 = !setLokol1;
                    });
                  },
                  icon: setLokol1
                      ? const Icon(
                          Icons.favorite_border,
                          size: 32,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 34,
                        ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.messenger_outline,
                  color: Colors.grey,
                  size: 28,
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.near_me_outlined,
                  color: Colors.grey,
                  size: 32,
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {
                    setState(() {
                      setLokol = !setLokol;
                    });
                  },
                  icon: setLokol
                      ? const Icon(
                          Icons.bookmark_border,
                          color: Colors.grey,
                          size: 34,
                        )
                      : const Icon(
                          Icons.bookmark_add,
                          color: Colors.grey,
                          size: 34,
                        ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Liked By",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  "Sigmund, Yessenia, Dayana",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "and",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text(
                  "1263 others",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 4, top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Brianne",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " Consequator nihil aliquid omnis consequatur.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 4, top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  " Febuary 2020",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _iconBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
          icon: Icon(
            Icons.home,
            color: index == 0 ? Colors.black : Colors.grey,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
          icon: Icon(
            Icons.search,
            color: index == 1 ? Colors.black : Colors.grey,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
          icon: Icon(
            Icons.add_box_outlined,
            color: index == 2 ? Colors.black : Colors.grey,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              index = 3;
            });
          },
          icon: Icon(
            Icons.favorite_border,
            color: index == 3 ? Colors.black : Colors.grey,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              index = 4;
            });
          },
          icon: Icon(
            Icons.person_outline,
            color: index == 4 ? Colors.black : Colors.grey,
            size: 28,
          ),
        ),
      ],
    );
  }
}
