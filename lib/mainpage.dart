// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _BankState();
}

class _BankState extends State<Bank> {
  bool text = true;
  bool? ischecked = false;
  int icon = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 223, 223),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 221, 168, 8),
        title: Row(
          children: [
            Container(
                height: 60,
                width: 90,
                child: const Image(image: AssetImage('img/bank logo.jfif'))),
            const Text(
              "Siddhartha",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 27),
            ),
            const Text(
              "Bank",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 27),
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.sms,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 525,
              child: Stack(
                children: [
                  Container(
                    height: 185,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100)),
                      color:  Color.fromARGB(255, 221, 168, 8),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 20,
                      right: 20,
                      child: Container(
                        height: 500,
                        width: 265,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  blurRadius: 13,
                                  spreadRadius: 0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 23,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: "Good Morning,",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.black)),
                                  TextSpan(
                                      text: "  Bibash",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.black))
                                ]))
                              ],
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Mobile Number",
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 45,
                              width: 285,
                              decoration: const BoxDecoration(),
                              child: TextFormField(
                                keyboardType:
                                    const TextInputType.numberWithOptions(),
                                    
                                decoration: const InputDecoration(
                                  
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Password",
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 45,
                              width: 285,
                              decoration: const BoxDecoration(),
                              child: TextFormField(
                                obscureText: text,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          text = !text;
                                        });
                                      },
                                      child: Icon(text
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined),
                                    )),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: 21,),
                                Checkbox(
                                
                                  value: ischecked,
                                  onChanged: (newval) {
                                    setState(() {
                                      ischecked = newval;
                                    });
                                  },
                                  activeColor: Colors.black,
                                ),
                                const Text("Remember me")
                              ],
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                  height: 40,
                                  width: 325,
                                  color: Colors.black,
                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "New to Siddhartha BankSmart XP?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Register/Activate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "or",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "   Forgot\nPassword",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
//*************Floating Actionbutton */
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.none,
        onPressed: () {},
       
        backgroundColor: const Color.fromARGB(255, 221, 168, 8),
         child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //**********Bottom NavigationBar */
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
                height: 60,
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            icon = 0;
                          });
                        },
                        child: Icon(
                          Icons.home,
                          color: icon == 0 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                        )),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: icon == 0 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              width: 35,
            ),
            Container(
                height: 60,
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            icon = 1;
                          });
                        },
                        child: Icon(
                          Icons.currency_rupee,
                          color: icon == 1 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                        )),
                    Text(
                      "Payments",
                      style: TextStyle(
                        color: icon == 1 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              width: 95,
            ),
            Container(
                height: 60,
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            icon = 2;
                          });
                        },
                        child: Icon(
                          Icons.check_box,
                          color: icon == 2 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                        )),
                    Text(
                      "Products",
                      style: TextStyle(
                        color: icon == 2 ? const Color.fromARGB(255, 221, 168, 8): Colors.black,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              width: 40,
            ),
            Container(
                height: 60,
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            icon = 3;
                          });
                        },
                        child: Icon(
                          Icons.more_horiz_rounded,
                          color: icon == 3 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                        )),
                    Text(
                      "More",
                      style: TextStyle(
                        color: icon == 3 ? const Color.fromARGB(255, 221, 168, 8) : Colors.black,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              width: 11,
            ),
          ],
        ),
      ),
    );
  }
}
