import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActiveOption extends StatelessWidget {
  const ActiveOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 7,
        right: 12,
        left: 12,
        bottom: 7,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Smart Lamp",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Dining Room | Tue Thu",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 60,
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/on.png",
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.lightbulb,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          "from",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 60,
                          ),
                        ),
                        Text(
                          "8 pm",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.height / 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.black.withOpacity(0.2),
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: const [
                      Text("to"),
                      Text("8 am"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.black.withOpacity(0.05),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: const [
                    Icon(
                      Icons.delete,
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.penToSquare,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
