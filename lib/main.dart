import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CardDesign(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Enterprise Delivery",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.indigo.shade50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Delivery Details"),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.notification_add),
                          Icon(Icons.notification_add_outlined),
                          Icon(Icons.notification_add)
                        ],
                      ),
                    ),
                    const SizedBox(width: 40),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Start Location"),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 200,
                              child: Text(
                                  "#43, 14th Main, Opposite IIM Bangalore, Bannerghata Road, Bengaluru - 560045"),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("Distance"),
                                    SizedBox(height: 10),
                                    Text("16.3km")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Time"),
                                    SizedBox(height: 10),
                                    Text("01h:37m:24s")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("End Location"),
                            SizedBox(height: 10),
                            SizedBox(
                              width: 200,
                              child: Text(
                                  "#43, 14th Main, Opposite IIM Bangalore, Bannerghata Road, Bengaluru - 560045"),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade50,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Enterprise Delivery",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "  Delivery Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              'assets/images/svg/start_location.svg'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start Location",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              const SizedBox(
                                width: 240,
                                child: Text(
                                  "#43, 14th Main, Opposite IIM Bangalore, Bannerghata Road, Bengaluru - 560045",
                                  style: TextStyle(
                                      letterSpacing: 0.5,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          SvgPicture.asset(
                              'assets/images/svg/location_line.svg'),
                          SizedBox(width: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Distance",
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                      ),
                                      SizedBox(height: 5),
                                      const Text(
                                        "16.2km",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Time",
                                        style: TextStyle(
                                            color: Colors.grey.shade600),
                                      ),
                                      SizedBox(height: 5),
                                      const Text(
                                        "01h:32m:17s",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      // SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                              'assets/images/svg/end_location.svg'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End Location",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 5),
                              const SizedBox(
                                width: 240,
                                child: Text(
                                    "#43, 14th Main, Opposite IIM Bangalore, Bannerghata Road, Bengaluru - 560045#43, 14th Main, Opposite IIM Bangalore, Bannerghata Road, Bengaluru - 560045",
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const CustomerDetails(),
              const BillingDetails(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add Notes (if any)",
                    style: TextStyle(
                        color: Colors.indigo.shade900,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2),
                  )),
              SizedBox(height: 30),
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: const EdgeInsets.only(left: 05, right: 5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo.shade900),
                      onPressed: () {},
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width / 1.15,
              //   height: 50,
              //   child:
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        const Text(
          "  Customer Details",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Customer",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Amazon",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(
                  "No. of Services",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter services",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BillingDetails extends StatelessWidget {
  const BillingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          "  Billing Details",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Number of Services",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "6",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fare per Services (₹30.00)",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "6*30.00=₹180.00",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "₹180.00",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
