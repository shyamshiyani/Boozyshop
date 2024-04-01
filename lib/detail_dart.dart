import 'package:boozyshop/utils/all_paroduct_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff4DD0E1).withOpacity(0.6),
        title: const Text(
          "Detail Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("Cart_page");
              },
              child: Badge(
                label: Text("${ProductData.cartData.length}"),
                child: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey.shade100,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...data['images'].map((e) {
                    return Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(e)),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffE0F7FA),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: 7, spreadRadius: 1, color: Color(0xffE0F7FA)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 30, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "${data['productName']}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4DD0E1),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${data['price']}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4DD0E1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Description ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4DD0E1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "${data['description']}",
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          wordSpacing: 2),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ProductData.cartData.add(data);
                          ProductData.convertUniqueData();
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 280,
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Color(0xff4DD0E1),
                          )),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
