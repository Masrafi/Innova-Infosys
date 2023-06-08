import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsensityBelow extends StatelessWidget {
  const InsensityBelow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(
          FontAwesomeIcons.lightbulb,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            children: [
              // Container(
              //   height: 12,
              //   width: 12,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: color.theme,),
              // ),

              Container(
                margin: EdgeInsets.only(
                  top:
                  MediaQuery.of(context).size.height / 80,
                ),
                height: 1,
                width: 250,
                color: Colors.white.withOpacity(.6),
              ),
              Container(
                height: 11,
                width: 11,
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 2,
                  width: 2,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  left:
                  MediaQuery.of(context).size.height / 19,
                ),
                height: 11,
                width: 11,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 2,
                  width: 2,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                    top: 5,
                    left: MediaQuery.of(context).size.height /
                        9.5),
                height: 11,
                width: 11,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 2,
                  width: 2,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  left: MediaQuery.of(context).size.height /
                      6.4,
                ),
                height: 11,
                width: 11,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 2,
                  width: 2,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  left: MediaQuery.of(context).size.height /
                      4.7,
                ),
                height: 11,
                width: 11,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 2,
                  width: 2,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height /
                      4.2,
                ),
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 3,
                  width: 3,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  left: MediaQuery.of(context).size.height /
                      3.7,
                ),
                height: 11,
                width: 11,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 2,
                  width: 2,
                  margin: const EdgeInsets.only(
                    top: 2,
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
              ),
              // Container(
              //   height: 12,
              //   width: 12,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: color.theme,),
              // ),
            ],
          ),
        ),
        const Icon(
          FontAwesomeIcons.lightbulb,
          color: Colors.amber,
        ),
      ],
    );
  }
}
