import 'package:flutter/material.dart';
import 'package:live9/constant.dart';
import 'package:live9/my_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count1 = 0,
      count2 = 0,
      count3 = 0,
      price1 = 50,
      price2 = 100,
      price3 = 70,
      items = 0,
      totalAmount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const MyText(
            text: "Online-Shop",
            textSize: 25,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? buildPortraitLayout()
                : buildLandscapeLayout();
          },
        ));
  }

  buildPortraitLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
          child:
              MyText(text: "My Bag", textSize: 30, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: Image.network(url1),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: MyText(
                            text: "T-Shirt",
                            textSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Color: Black"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Size: M"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count1 = count1 + 1;
                                    totalAmount += price1;
                                    items += 1;
                                  });
                                },
                                child: iconAdd,
                              ),
                            ),
                            Text(
                              count1.toString(),
                              style: const TextStyle(fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (count1 > 0) {
                                      count1 = count1 - 1;
                                      totalAmount -= price1;
                                      items -= 1;
                                    }
                                  });
                                },
                                child: iconSub,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      iconMoreVert,
                      const SizedBox(height: 80),
                      MyText(text: "$price1\$", textSize: 25),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        //Card-2 potion
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: Image.network(url2)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: MyText(
                            text: "Nike-Shoe",
                            textSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Color: Black"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Size: L"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count2 = count2 + 1;
                                    totalAmount += price2;
                                    items += 1;
                                  });
                                },
                                child: iconAdd,
                              ),
                            ),
                            MyText(text: count2.toString(), textSize: 30),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (count2 > 0) {
                                      count2 = count2 - 1;
                                      totalAmount -= price2;
                                      items -= 1;
                                    }
                                  });
                                },
                                child: iconSub,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      iconMoreVert,
                      const SizedBox(height: 80),
                      MyText(text: "$price2\$", textSize: 25),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Image.network(url3),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: MyText(
                            text: "Taujer-Pant",
                            textSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Color: White"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("Size: Free"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    count3 = count3 + 1;
                                    totalAmount += price3;
                                    items += 1;
                                  });
                                },
                                child: iconAdd,
                              ),
                            ),
                            MyText(text: count3.toString(), textSize: 30),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (count3 > 0) {
                                      count3 = count3 - 1;
                                      totalAmount -= price3;
                                      items -= 1;
                                    }
                                  });
                                },
                                child: iconSub,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      iconMoreVert,
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        "$price3\$",
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
            width: double.infinity,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const MyText(text: "Total Amount", textSize: 18),
                const SizedBox(width: 50),
                Text("\$$totalAmount", style: const TextStyle(fontSize: 25)),
              ],
            )),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                final snackBar = SnackBar(
                  content: MyText(
                      text:
                          'Successfully Bought $items Items\n TotalPrice: $totalAmount\$',
                      textSize: 20,
                      textColor: Colors.white),
                  duration: const Duration(seconds: 2),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const MyText(
                  text: 'CHECK OUT',
                  textSize: 20,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  buildLandscapeLayout() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: MyText(
                text: "My Bag", textSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 5,
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: Image.network(url1),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(15),
                            child: MyText(
                                text: "T-Shirt",
                                textSize: 23,
                                fontWeight: FontWeight.bold)),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Color: Black"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Size: M"),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        count1 = count1 + 1;
                                        totalAmount += price1;
                                        items += 1;
                                      });
                                    },
                                    child: iconAdd),
                              ),
                              MyText(text: count1.toString(), textSize: 30),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (count1 > 0) {
                                          count1 = count1 - 1;
                                          totalAmount -= price1;
                                          items -= 1;
                                        }
                                      });
                                    },
                                    child: iconSub),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        iconMoreVert,
                        const SizedBox(height: 80),
                        MyText(text: '$price1\$', textSize: 25),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          //Card2
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 5,
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        child: Image.network(url2)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: MyText(
                              text: "Nike-Shoe",
                              textSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Color: Black"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Size: L"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        count2 = count2 + 1;
                                        totalAmount += price2;
                                        items += 1;
                                      });
                                    },
                                    child: iconAdd),
                              ),
                              MyText(text: count2.toString(), textSize: 30),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (count2 > 0) {
                                          count2 = count2 - 1;
                                          totalAmount -= price2;
                                          items -= 1;
                                        }
                                      });
                                    },
                                    child: iconSub),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        iconMoreVert,
                        const SizedBox(
                          height: 80,
                        ),
                        Text(
                          "$price2\$",
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 5,
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: Image.network(url3),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: MyText(
                              text: 'Taujer-Pant',
                              textSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Color: White"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Size: Free"),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        count3 = count3 + 1;
                                        totalAmount += price3;
                                        items += 1;
                                      });
                                    },
                                    child: iconAdd),
                              ),
                              Text(
                                count3.toString(),
                                style: const TextStyle(fontSize: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (count3 > 0) {
                                          count3 = count3 - 1;
                                          totalAmount -= price3;
                                          items -= 1;
                                        }
                                      });
                                    },
                                    child: iconSub),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        iconMoreVert,
                        const SizedBox(
                          height: 80,
                        ),
                        MyText(text: '$price3\$', textSize: 25),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              width: double.infinity,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyText(text: "Total Amount", textSize: 25),
                  const SizedBox(width: 100),
                  MyText(text: '\$ $totalAmount', textSize: 25)
                ],
              )),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              left: 200,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 50),
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Center(
                      child: MyText(
                          text:
                              'Successfully Bought $items Items\n TotalPrice: $totalAmount\$',
                          textSize: 20,
                          textColor: Colors.white),
                    ),
                    duration: const Duration(
                        seconds: 2), // You can set the duration of the Snackbar
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const MyText(
                    text: 'CHECK OUT', textSize: 20, textColor: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
