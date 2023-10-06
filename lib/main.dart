import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color activeColor = Colors.orange;
  Color inActiveColor = Colors.grey;
  bool btnPress = false;
  void showColor() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Selector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    btnPress = true;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: btnPress == true ? Colors.orange : Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'S',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    btnPress = true;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: btnPress == true ? Colors.orange : Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'M',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    btnPress = true;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: btnPress == true ? Colors.orange : Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'L',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    btnPress = true;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: btnPress == true ? Colors.orange : Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'XL',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //2nd row
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      btnPress = true;
                      setState(() {});
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: btnPress == true ? Colors.orange : Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'XXL',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      btnPress = true;
                      setState(() {});
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: btnPress == true ? Colors.orange : Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'XXXL',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
