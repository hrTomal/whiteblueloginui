import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                margin: const EdgeInsets.only(
                  right: 30,
                  left: 30,
                  bottom: 0,
                  top: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Expanded(
                    //   child: Text('Login'),
                    // ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              // const Positioned(
              //   top: -55,
              //   left: 27,
              //   child: CircleAvatar(
              //     backgroundColor: Colors.white,
              //     radius: 54,
              //     child: CircleAvatar(
              //       backgroundColor: Colors.lightBlueAccent,
              //       radius: 50,
              //     ),
              //   ),
              // ),
            ],
          ),
          Stack(
            children: [
              ClipPath(
                clipBehavior: Clip.hardEdge,
                clipper: const ShapeBorderClipper(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(130),
                      // topLeft: Radius.circular(150),
                    ),
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .25,
                  // width: MediaQuery.of(context).size.width * .9,
                  padding: const EdgeInsets.all(35),
                  margin: const EdgeInsets.only(
                    right: 30,
                    left: 30,
                    bottom: 10,
                    top: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 35,
                      right: 35,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextField(
                          // textAlign: TextAlign.center,
                          decoration:
                              inputTextField.copyWith(hintText: 'Email'),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          // textAlign: TextAlign.center,
                          decoration:
                              inputTextField.copyWith(hintText: 'Password'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.025,
                left: MediaQuery.of(context).size.width * 0.78,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.login_outlined,
                      color: Colors.lightBlueAccent,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            margin: const EdgeInsets.only(
              right: 30,
              left: 30,
              bottom: 10,
              top: 0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
