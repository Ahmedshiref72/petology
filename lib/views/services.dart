import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ServicesView extends StatefulWidget {
  @override
  _ServicesViewState createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  Widget build(BuildContext context) {
    List<AssetImage> items = [
      AssetImage('assets/images/CompositeLayer.png'),
      AssetImage('assets/images/Dog.png'),
      AssetImage('assets/images/CompositeLayer.png'),
    ];
    CarouselController buttonCarouselController = CarouselController();
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                      HexColor('#180701'),
                      HexColor('#654538'),
                    ])),
                child: CarouselSlider(
                  carouselController: buttonCarouselController,
                  items: items
                      .map(
                        (e) => Image(
                          image: AssetImage('${e.assetName}'),
                          width: double.infinity,
                          fit: BoxFit.scaleDown,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: 250.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(microseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    pauseAutoPlayOnTouch: true,
                  ),
                ),
              ),
              PositionedDirectional(
                top: 80,
                end: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      buttonCarouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                    child: Image(
                      image: AssetImage('assets/images/Icon ionic-ios-.png'),
                      width: size.width * 1,
                      height: size.height * 1,
                    ),
                  ),
                ),
              ),
              PositionedDirectional(
                top: 80,
                start: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      buttonCarouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                    child: Image(
                      image:
                          AssetImage('assets/images/Icon ionic-ios- (1).png'),
                      width: size.width * 1,
                      height: size.height * 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          AdaptionContent()
        ],
      ),
    );
  }
}

class AdaptionContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 50.0),
      child: Column(

          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Elsa',
              style: TextStyle(
                color: HexColor("492F24"),
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Text(
                      'Share by: Rawan tarek',
                      style: TextStyle(
                          color: HexColor("492F24"),
                          fontSize: 30,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "As a general rule, puppies and young dogs burn more calories, so they \nneed a greater quantity of food that is higher in protein and fat. Older, less \nactive dogs require fewer calories to remain healthy.\n\n"
              "Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to \nNatural Health for Dogs and Cats, believes the most reliable approach is to \nfeed what seems to be a reasonable amount and monitor his body weight.\n\n"
              "You should be able to feel your pet’s ribs easily as you slide your hand \nover his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so \nbegin to feed a smaller quantity.\n\n"
              "If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box.\nIt lists different weights and the corresponding amount of food to feed your dog to maintain that weight,\nand should be used only as a rough guideline.\n\n"
              "Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and \nbody condition is a good way to proceed.\nDifferent Portions for Different Pooches Though it may sound counterintuitive, as a general rule, \n\n ",
              style: TextStyle(
                color: HexColor("492F24"),
                fontSize: 30,

              ),
            ),
          ],
        ),
    );

  }
}
