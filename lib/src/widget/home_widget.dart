import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xFFC82A3C)],
              stops: [0.5, 1])),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg'),
                  ),
                  const Text(
                    'Hello Malo !',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 57, 57, 57)),
                    child: IconButton(
                      onPressed: () => print('notificztion'),
                      icon: const Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFC82A3C).withOpacity(0.6),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wallet (USDT)',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '\$ 14 230.04',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 5),
                  child: Text(
                    'Activities',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 210,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(148, 26, 0, 0),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 45, 0, 0),
                                  width: 2),
                            ),
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    'Friend\'s profil',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  top: 40,
                                  child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.blueGrey[700],
                                      backgroundImage: const NetworkImage(
                                          'https://www.missnumerique.com/blog/wp-content/uploads/photo-de-profil-conseils-engin-akyurt.jpg')),
                                ),
                                Positioned(
                                    left: 70,
                                    top: 40,
                                    child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.blueGrey[700],
                                        backgroundImage: const NetworkImage(
                                            'https://a.storyblok.com/f/191576/1200x800/faa88c639f/round_profil_picture_before_.webp'))),
                                Positioned(
                                  left: 120,
                                  top: 40,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.blueGrey[700],
                                    backgroundImage: const NetworkImage(
                                        'https://www.missnumerique.com/blog/wp-content/uploads/conseils-pour-une-photo-de-profil-reussie-mateus-campos-felipe.jpg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(148, 26, 0, 0),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 45, 0, 0),
                                    width: 2,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      top: 40,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Add Friend',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(148, 26, 0, 0),
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 45, 0, 0),
                                      width: 2),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      top: 40,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            'Add Cash',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: Container(
                            width: 290,
                            height: 310,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(148, 26, 0, 0),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 45, 0, 0),
                                  width: 2),
                            ),
                            child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("BTC",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_upward_outlined,
                                            color: Colors.green),
                                        Text("+0.5 BTC",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("ETH",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_downward_outlined,
                                            color: Colors.red),
                                        Text("-0.3 ETH",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    // Transaction 3
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("LTC",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_upward_outlined,
                                            color: Colors.green),
                                        Text("+1.2 LTC",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("XRP",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_downward_outlined,
                                            color: Colors.red),
                                        Text("-5.0 XRP",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("DOGE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_upward_outlined,
                                            color: Colors.green),
                                        Text("+20.0 DOGE",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    // Transaction 6
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("ADA",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_upward_outlined,
                                            color: Colors.green),
                                        Text("+15.0 ADA",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("SOL",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_downward_outlined,
                                            color: Colors.red),
                                        Text("-2.4 SOL",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("DOT",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_upward_outlined,
                                            color: Colors.green),
                                        Text("+3.1 DOT",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("BNB",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_downward_outlined,
                                            color: Colors.red),
                                        Text("-1.0 BNB",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("UNI",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                        Icon(Icons.arrow_upward_outlined,
                                            color: Colors.green),
                                        Text("+5.5 UNI",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 10)),
                                      ],
                                    ),
                                  ],
                                ))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
