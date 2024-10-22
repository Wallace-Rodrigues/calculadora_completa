import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controlVisor = TextEditingController();
  String resultado = '';
  
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(102, 80, 163, 0.8),
          title: const Center(
              child: Text('CALCULADORA',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: TextField(
                  controller: controlVisor,
                  enabled: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '1';
                      });
                    },
                    child: const Text('1'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '2';
                      });
                    },
                    child: const Text('2'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '3';
                      });
                    },
                    child: const Text('3'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        
                        controlVisor.text += '/';
                      });
                    },
                    child: const Text('÷',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '4';
                      });
                    },
                    child: const Text('4'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '5';
                      });
                    },
                    child: const Text('5'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '6';
                      });
                    },
                    child: const Text('6'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '*';
                      });
                    },
                    child: const Text('X',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '7';
                      });
                    },
                    child: const Text('7'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '8';
                      });
                    },
                    child: const Text('8'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '9';
                      });
                    },
                    child: const Text('9'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '-';
                      });
                    },
                    child: const Text('–',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromWidth(20),
                    ),
                    onPressed: () {
                      if (controlVisor.text.isNotEmpty) {
                        controlVisor.text = controlVisor.text
                            .substring(0, controlVisor.text.length - 1);
                      }
                    },
                    child: const Icon(
                      Icons.backspace,
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '0';
                      });
                    },
                    child: const Text('0'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '.';
                      });
                    },
                    child: const Text(',',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controlVisor.text += '+';
                      });
                    },
                    child: const Text('+',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(102, 80, 163, 0.8),
                        overlayColor: const Color.fromRGBO(255, 255, 255, 1.0),
                        fixedSize: const Size.fromWidth(180),
                      ),
                      onPressed: () {
                        var context = {
                          "0": 0,
                          "1": 1,
                          "2": 2,
                          "3": 3,
                          "4": 4,
                          "5": 5,
                          "6": 6,
                          "7": 7,
                          "8": 8,
                          "9": 9,
                          "+": '+',
                          "-": '-',
                          "*": '*',
                          "/": '/',
                          ".": '.',
                        };
                        Expression exp = Expression.parse(controlVisor.text);
                        const evaluator = ExpressionEvaluator();
                        var resultado = evaluator.eval(exp, context);
                        controlVisor.text = resultado.toString();
                      },
                      child: const Text('=',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                  
                  const SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(102, 80, 163, 0.8),
                      overlayColor: const Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                    onPressed: () {
                      controlVisor.text = '';
                    },
                    child: const Text('C',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                            
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
