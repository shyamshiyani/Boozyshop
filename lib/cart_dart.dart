import 'package:boozyshop/utils/all_paroduct_data.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4DD0E1).withOpacity(0.6),
        centerTitle: true,
        title: const Text(
          "Cart Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).popAndPushNamed('HomePage');
          },
          child: Icon(
            Icons.clear,
            color: Color(0xff444d72),
          ),
        ),
      ),
      body: (ProductData.cartData.length == 0)
          ? Container(
              alignment: Alignment.center,
              child: Text(
                "No Data Found",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.grey),
              ),
            )
          : Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: ProductData.cartProductData
                            .map(
                              (e) => Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                height: 350,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      color: Colors.grey,
                                      offset: Offset(0, 1),
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 250,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:
                                                  NetworkImage("${e['image']}"),
                                              fit: BoxFit.fitHeight,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade100,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${e['productName']}",
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "\$${e['price']}",
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                ProductData.cartProductData
                                                    .remove(e);
                                                ProductData.cartData.remove(e);
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove_shopping_cart,
                                              size: 30,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Color(0xff4DD0E1),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total Price:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        Text(
                          "\$${ProductData.totalPrice()}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        )
                      ],
                    ),
                  ),
                )),
              ],
            ),
    );
  }
}
