import 'package:flutter/material.dart';

class AppUi extends StatelessWidget {
  Widget widgetcard(image) {
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  const AppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(35)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find your",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Destination",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(18)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "What you're looking for",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dream Destination",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      padding: EdgeInsets.only(right: 10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        widgetcard(
                            "https://tse1.mm.bing.net/th?id=OIP.SoahVqttiizs0xuIK1X4bQHaD5&pid=Api&P=0"),
                        widgetcard(
                            "https://tse4.mm.bing.net/th?id=OIP.yCbwTHah10TN8BtCpfxfXgHaIR&pid=Api&P=0"),
                        widgetcard(
                            "https://tse1.mm.bing.net/th?id=OIP.Rbz4enuvazajrDk8mgejbQHaHN&pid=Api&P=0"),
                        widgetcard(
                            "https://tse4.mm.bing.net/th?id=OIP.I6bWec-vj9eZA9T7GUlQ8QHaE7&pid=Api&P=0"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "India Holiday Packages",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        widgetcard(
                            "https://tse2.mm.bing.net/th?id=OIP.DcOS7eeIkBF15mLP1DfjYQHaE7&pid=Api&P=0"),
                        widgetcard(
                            "https://tse3.mm.bing.net/th?id=OIP.QgFzBQFl0n1I7J_TCrODPQHaE8&pid=Api&P=0"),
                        widgetcard(
                            "https://tse4.mm.bing.net/th?id=OIP.rPWMljByk9aK15Z9rTdAfgHaEK&pid=Api&P=0"),
                        widgetcard(
                            "https://tse2.mm.bing.net/th?id=OIP.NqvnH2rFzIOj55RItE2BHgHaD4&pid=Api&P=0"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
