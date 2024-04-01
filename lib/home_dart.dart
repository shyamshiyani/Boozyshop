import 'package:boozyshop/utils/all_paroduct_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selDropDown;
  RangeValues values = const RangeValues(0, 3000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff4DD0E1).withOpacity(0.6),
        title: Text(
          "home Page",
          style: TextStyle(fontSize: 25),
        ),
        leading: Icon(
          Icons.menu,
          color: Color(0xff444d72),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("Cart_page");
              },
              child: const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xffE0F7FA),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    DropdownButton(
                      onChanged: (val) {
                        setState(() {
                          selDropDown = val as String;
                        });
                      },
                      hint: const Text("Select category..."),
                      value: selDropDown,
                      items: ProductData.allProductData
                          .map(
                            (e) => DropdownMenuItem(
                              value: e['categoryName'],
                              child: Text(e['categoryName']),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(width: 10),
                    (selDropDown != null)
                        ? ActionChip(
                            onPressed: () {
                              setState(() {
                                selDropDown = null;
                                values = const RangeValues(0, 3000);
                              });
                            },
                            avatar: const Icon(Icons.close),
                            label: const Text("Clear"),
                          )
                        : Container(),
                  ],
                ),
              ),
              (selDropDown != null)
                  ? Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "From",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ ${values.start.toInt()}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Expanded(
                          child: RangeSlider(
                            values: values,
                            max: 3000,
                            min: 0,
                            onChanged: (RangeValues val) {
                              setState(() {
                                values = val;
                              });
                            },
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              "To",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ ${values.end.toInt()}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Container(),
              Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...ProductData.allProductData.map(
                        (val) {
                          return ((selDropDown == val['categoryName']) ||
                                  selDropDown == null)
                              ? Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Text(
                                          "${val['categoryName']}",
                                          style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4DD0E1),
                                          ),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            ...val['categoryProducts'].map(
                                              (e) => (e['price'] >=
                                                          values.start &&
                                                      e['price'] <= values.end)
                                                  ? GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pushNamed(
                                                                'DetailPage',
                                                                arguments: e);
                                                      },
                                                      child: Container(
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        height: 350,
                                                        width: 350,
                                                        decoration:
                                                            const BoxDecoration(
                                                          // color: Colors.blue,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(20),
                                                          ),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 330,
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          20),
                                                                ),
                                                                // color: Colors.grey,
                                                              ),
                                                              child: Column(
                                                                  children: [
                                                                    Expanded(
                                                                      flex: 5,
                                                                      child:
                                                                          Container(
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                              image: NetworkImage("${e['image']}"),
                                                                              fit: BoxFit.fitHeight,
                                                                            ),
                                                                            // color: Colors.blue,
                                                                            borderRadius: const BorderRadius.only(
                                                                              topRight: Radius.circular(20),
                                                                              topLeft: Radius.circular(20),
                                                                            ),
                                                                            color: Colors.white),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 2,
                                                                      child:
                                                                          Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              const BoxDecoration(
                                                                            color:
                                                                                Color(0xffE3F2FD),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomRight: Radius.circular(20),
                                                                              bottomLeft: Radius.circular(20),
                                                                            ),
                                                                            boxShadow: <BoxShadow>[
                                                                              BoxShadow(
                                                                                color: Colors.grey,
                                                                                blurRadius: 1,
                                                                                offset: Offset(0, 1),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsets.only(left: 8.0),
                                                                                child: Text(
                                                                                  "${e['productName']}",
                                                                                  style: const TextStyle(
                                                                                    fontSize: 22,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Color(0xff4DD0E1),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.only(left: 8.0),
                                                                                child: Text(
                                                                                  "\$${e['price']}",
                                                                                  style: const TextStyle(
                                                                                    fontSize: 20,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Color(0xff4DD0E1),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  : Container(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container();
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
