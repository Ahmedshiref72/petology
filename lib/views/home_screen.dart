import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/components/components.dart';
import 'package:petology/views/request.dart';
import 'package:petology/views/services.dart';
import 'package:petology/views/sign_up.dart';
import 'about_us.dart';
import 'adaption.dart';
import 'login.dart';


class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  var isHover =[false,false,false,false,false,false];
  List <Widget> screens=
  [
    AboutUSView(),
    AdaptionScreen(),
    ServicesView(),
    RequestView(),
    SignUpView(),
    LoginView(),
  ];

  int index=0;
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Scaffold(
      appBar:PreferredSize(
        preferredSize:Size(size.width,80),
        child:Container(
          decoration:  BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    HexColor('#180701'),
                    HexColor('#654538'),
                  ])
          ),
          child: Padding(
            padding:  EdgeInsets.all(20.0),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width:size.width*.02 ,
                  ),
                  Image(image: AssetImage('assets/images/petology.png'),),
                  Spacer(),
                  textButton(size: size,
                      isHover: index==0?true:isHover[0],
                      hoverFunction:(value)=>setState(() {
                        isHover[0]=value;
                      }),
                      text: 'About us',
                      onTap:(){

                        setState(() {
                          index=0;
                        });

                      }

                  ),
                  textButton(size: size,
                      isHover: index==1?true:isHover[1],
                      hoverFunction:(value)=>setState(()
                      {
                        isHover[1]=value;
                      }),
                      text: 'Adaption',
                      onTap:(){
                        setState(() {
                          index=1;
                        });
                      }
                  ),
                  textButton(size: size,
                      isHover: index==2?true:isHover[2],
                      hoverFunction:(value)=>setState(() {
                        isHover[2]=value;
                      }),
                      text: 'Services',
                      onTap:(){
                        setState(() {
                          index=2;
                        });

                      }
                  ),
                  textButton(size: size,
                      isHover: index==3?true:isHover[3],
                      hoverFunction:(value)=>setState(() {
                        isHover[3]=value;
                      }),
                      text: 'Request',
                      onTap:(){
                        setState(() {
                          index=3;
                        });
                      }
                  ),
                  Spacer(),
                  InkWell(
                    onHover:(value)
                    {
                      if(value){
                        setState(() {
                          isHover[4]=true;
                        });}
                      else setState(() {
                        isHover[4]=false;
                      });
                      print(isHover);
                    } ,
                    onTap:(){
                      setState(() {
                        index=4;
                      });
                    },
                    child:isHover[4]||index==4? Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:Colors.white),
                          color: HexColor('#A29A98')
                      ),
                      child: Center(
                        child: Text('Sign up',style: TextStyle(
                            color: isHover[4]||index==4?Colors.black:Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ):
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:Colors.white),
                      ),
                      child: Center(
                        child: Text('Sign up',style: TextStyle(
                            color: isHover[4]?Colors.black:Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width:size.width*.02,),
                  InkWell(
                    onHover:(value)
                    {
                      if(value){
                        setState(() {
                          isHover[5]=true;
                        });}
                      else setState(() {
                        isHover[5]=false;
                      });
                      print(isHover);
                    } ,
                    onTap: ()
                    {
                      setState(() {
                        index=5;
                      });
                      print(index);

                    },
                    child:isHover[5]||index==5? Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color:Colors.white),
                          color: HexColor('#A29A98')
                      ),
                      child: Center(
                        child: Text('Login',style: TextStyle(
                            color: isHover[5]||index==5?Colors.black:Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ):
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:Colors.white),
                      ),
                      child: Center(
                        child: Text('Login',style: TextStyle(
                            color: isHover[5]?Colors.black:Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ) ,
      ) ,
      body:SingleChildScrollView(
        child: Column(
          children: [
            screens[index],
            Container(
              decoration:  BoxDecoration(
                  gradient:LinearGradient(begin:Alignment.bottomRight ,
                      end:Alignment.topLeft ,
                      colors:
                      [
                        HexColor('#190801'),
                        HexColor('#432A20'),
                      ])
              ),
              child: Padding(
                padding:  EdgeInsets.all(1.0),
                child: Expanded(
                  child: Row(
                    children:
                    [
                      Column(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left:size.width*.05),
                            child: Stack(
                              children:
                              [
                                Padding(
                                  padding:EdgeInsets.only(left:size.width*.19),
                                  child: Image(
                                    color: Colors.brown[200],
                                    image: AssetImage('assets/images/dogHand.png'),
                                    height:100 ,
                                    width:100,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('For any questions',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: HexColor('#FFE3C5')
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom:20,top: 10),
                            child: Row(
                              children:
                              [
                                Image(image: AssetImage('assets/images/email.png'),
                                  color:HexColor('#AE957B'),
                                  height:40 ,
                                  width: 40,
                                ),
                                SizedBox(width: 30,),
                                Text(
                                  'Email@petology.com',
                                  style: TextStyle(color: HexColor('#AE957B'),
                                      fontSize:22 ,
                                      fontWeight:FontWeight.w600
                                  ),

                                )

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0,bottom: 20),
                            child: Row(
                              children:
                              [
                                Icon(Icons.call,
                                  color:HexColor('#AE957B'),
                                  size: 50,
                                ),
                                SizedBox(width: 30,),
                                Text(
                                  '(+2)01204232759',
                                  style: TextStyle(color: HexColor('#AE957B'),
                                      fontSize:22 ,
                                      fontWeight:FontWeight.w600
                                  ),

                                ),
                                SizedBox(width: 50,),


                              ],
                            ),
                          ),




                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(top: 20,left:size.width*.05),
                              child: Stack(
                                children:
                                [
                                  Padding(
                                    padding:EdgeInsets.only(left:size.width*.19),
                                    child: Image(
                                      color: Colors.brown[200],
                                      image: AssetImage('assets/images/dogHand.png'),
                                      height:100 ,
                                      width:100,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text('We are waiting you',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: HexColor('#FFE3C5')
                                    ),),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:20,top: 10),
                              child: Row(
                                children:
                                [
                                  Icon(Icons.location_pin,
                                    color:HexColor('#AE957B'),
                                    size: 50,
                                  ),
                                  SizedBox(width: 30,),
                                  Text(
                                    'First settlement/Cairo',
                                    style: TextStyle(color: HexColor('#AE957B'),
                                        fontSize:22 ,
                                        fontWeight:FontWeight.w600
                                    ),

                                  ),
                                  SizedBox(width: 2,),


                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20),
                              child: Row(
                                children:
                                [
                                  Icon(Icons.location_pin,
                                    color:HexColor('#AE957B'),
                                    size: 50,
                                  ),
                                  SizedBox(width: 30,),
                                  Text(
                                    'Cairo/Egypt',
                                    style: TextStyle(color: HexColor('#AE957B'),
                                        fontSize:22 ,
                                        fontWeight:FontWeight.w600
                                    ),

                                  ),
                                  SizedBox(width:95,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: Image(
                          image: AssetImage('assets/images/footerDog.png'),
                          height:400 ,
                          width:400,),
                      ),


                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),




    );
  }
}



