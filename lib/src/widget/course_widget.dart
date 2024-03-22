import 'package:flutter/material.dart';
import 'package:money_diagram/src/widget/contact_dropdown_widget.dart';
import 'package:slide_to_act/slide_to_act.dart';

class CourseWidget extends StatefulWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  String input = '';
  bool showSlider = false;
  String selectedContact = '';

  void _onKeyPress(String value) {
    setState(() {
      if (value == "del" && input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      } else if (RegExp(r'^\d$').hasMatch(value)) {
        input += value;
      }
    });
  }

  void _resetState() {
    setState(() {
      input = '';
      showSlider = false;
      selectedContact = '';
    });
  }

  void _showConfirmationAndReset(String amount, String recipient) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Le montant de $amount a été envoyé à $recipient.'),
        duration: Duration(seconds: 4),
      ),
    );

    Future.delayed(Duration(seconds: 4), () {
      _resetState();
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
                if (!showSlider)
                  Expanded(
                    child: GridView.count(
                      padding: const EdgeInsets.all(40),
                      crossAxisCount: 3,
                      children: List.generate(9, (index) {
                        return GestureDetector(
                          onTap: () => _onKeyPress('${index + 1}'),
                          child: Container(
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: const TextStyle(
                                    fontSize: 20,
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
                                child:
                                    Icon(Icons.backspace, color: Colors.white),
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
                        )
                        ..add(
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  showSlider = true;
                                });
                              },
                              child: Text(
                                'OK',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                    ),
                  ),
                if (showSlider)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SlideAction(
                      elevation: 3,
                      text: 'Glisser pour confirmer',
                      onSubmit: () {
                        _showConfirmationAndReset(
                            getFormattedInput(), selectedContact);
                      },
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
      return "0," + input.padLeft(2, '0');
    } else {
      var part1 = input.substring(0, input.length - 2);
      var part2 = input.substring(input.length - 2);
      return "$part1,$part2";
    }
  }
}
