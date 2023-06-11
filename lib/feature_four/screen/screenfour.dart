import 'package:flutter/material.dart';

import '../../feature_two/widget/active_option.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: double.infinity,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 50,
              left: MediaQuery.of(context).size.height / 40,
              right: MediaQuery.of(context).size.height / 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Smart Home",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/wind.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Smart Home",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image.asset("assets/dropdown.png")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            child: Container(
              height: 400,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 80,
                left: MediaQuery.of(context).size.height / 30,
                right: MediaQuery.of(context).size.height / 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Smart Mode",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height / 45,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 25.0,
                            height: 25.0,
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              "6",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ScreenThree(),
                          //   ),
                          // );
                        },
                        child: Container(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ActiveOption(
                    image: Image.asset(
                      "assets/on.png",
                      height: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ActiveOption(
                    image: Image.asset(
                      "assets/off.png",
                      height: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
