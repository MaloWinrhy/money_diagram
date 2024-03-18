import 'package:flutter/material.dart';

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
                    textAlign: TextAlign.end,
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
                                color: const Color.fromARGB(255, 57, 57, 57),
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
                                    color:
                                        const Color.fromARGB(255, 57, 57, 57),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 57, 57, 57),
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10, left: 5),
                          child: Container(
                            width: 290,
                            height: 310,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 57, 57, 57),
                            ),
                          ),
                        )),
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
