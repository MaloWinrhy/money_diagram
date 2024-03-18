import 'package:flutter/material.dart';
import 'package:money_diagram/src/widget/contact_dropdown_widget.dart';

class CourseWidget extends StatefulWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  String input = '';
  void _onKeyPress(String value) {
    setState(() {
      if (value == "del" && input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      } else if (RegExp(r'^\d$').hasMatch(value)) {
        input += value;
      }
    });
  }

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
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Send Money',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ContactsDropdown(),
                ],
              )),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$ ${getFormattedInput()}',
                  style: const TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(30),
                    crossAxisCount: 3, // Nombre de colonnes
                    children: List.generate(9, (index) {
                      return GestureDetector(
                        onTap: () => _onKeyPress(
                            '${index + 1}'), // Gère la touche appuyée
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    })
                      ..add(
                        GestureDetector(
                          onTap: () {
                            if (input.isNotEmpty) {
                              setState(() {
                                input = input.substring(0, input.length - 1);
                              });
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Icon(Icons.backspace, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                      ..add(
                        GestureDetector(
                          onTap: () => _onKeyPress('0'),
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getFormattedInput() {
    if (input.length <= 2) {
      // Assure que l'on a toujours deux chiffres après la virgule pour les entrées courtes
      return "0," + input.padLeft(2, '0');
    } else {
      // Insère une virgule avant les deux derniers chiffres pour les entrées plus longues
      var part1 = input.substring(0, input.length - 2);
      var part2 = input.substring(input.length - 2);
      return "$part1,$part2";
    }
  }
}
