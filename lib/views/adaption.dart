import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class AdaptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecorationStyle(),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AdaptionContent(),
        ),
      ],
    );
  }
}


class DecorationStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var adaptionContentSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: adaptionContentSize.height * 0.7,
          width: adaptionContentSize.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    HexColor('#180701'),
                    HexColor('#654538'),
                  ])),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Stack(
                children: [
                  Image(
                    image: AssetImage("assets/images/feed.png"),
                    height: 300,
                    width: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Image(
                      image: AssetImage("assets/images/dish.png"),
                      height: 200,
                      width: 500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AdaptionContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          'How you feed Your Dog?',
          style: TextStyle(
              color: HexColor("492F24"),
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "As a general rule, puppies and young dogs burn more calories, so they need a greater quantity of food that is higher in protein and fat. Older, less active dogs require fewer calories to remain healthy.\n\n"
              "Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable amount and monitor his body weight.\n\n"
              "You should be able to feel your pet’s ribs easily as you slide your hand over his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so begin to feed a smaller quantity.\n\n"
              "If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box.It lists different weights and the corresponding amount of food to feed your dog to maintain that weight,\nand should be used only as a rough guideline.\n\n"
              "Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and \nbody condition is a good way to proceed.\nDifferent Portions for Different Pooches Though it may sound counterintuitive, as a general rule, \n\n ",
          style: TextStyle(
            color: HexColor("492F24"),
            fontSize: 30,

          ),
        ),
      ],
    );
  }
}


