import 'package:flutter/material.dart';
import 'package:innova_infosys/utils/color.dart';

class BottomElements extends StatelessWidget {

  var colorFac= ColorFactory();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration:  BoxDecoration(
          color: colorFac.theme,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/home.png",
                        color: Colors.teal,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 55,
                            color: Colors.teal,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/net fill.png",
                    color: Colors.teal,
                  )),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/pie.png",
                    color: Colors.teal,
                  )),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/user fill.png",
                    color: Colors.teal,
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
