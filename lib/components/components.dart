import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

Widget textButton({
  required Size size,
  required var isHover,
  required Function hoverFunction,
  required String text,
  Function()? onTap,
})=>Padding(
  padding: EdgeInsets.symmetric(horizontal:size.width*.01),
  child: InkWell(
    onHover:(value)
    {
      if(value){
        hoverFunction(true);
      }
      else hoverFunction(false);
      print(isHover);
    } ,
    onTap:onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,style:TextStyle(
            color: Colors.grey[300],
            fontSize: 20,
            fontWeight: isHover?FontWeight.bold:FontWeight.w500
        ),),
        const SizedBox(height: 2,),
        if(isHover)
          Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true
              ,child: Container(
            width: 70,
            height:4 ,
            color:HexColor('#FFE3c5'),
          )

          )
      ],
    ),
  ),
);

Widget defaultTextButton({
  required Color color,
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          //fontSize: 21,
          /* fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,*/
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function()? onSubmit,
  Function? onChange,
  Function()? onTap,
  bool isPassword = false,
  required Function validate,
  String? label,
  IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
  bool isClickable = true,

  required double height,
  required double width,
  List<String>? autofill
}) =>
    Card(
      elevation:5,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
      clipBehavior:Clip.hardEdge,
      child: Container(
        width: width,
        height: height,

        child: Center(
          child: TextFormField(
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
            ),
            autofillHints:[
              AutofillHints.email,
              AutofillHints.password
            ],
            cursorColor: Colors.deepOrange,
            controller: controller,
            keyboardType: type,
            obscureText: isPassword,
            enabled: isClickable,
            onFieldSubmitted:(value)=>onSubmit,
            onChanged:(value)=> onChange,
            onTap: onTap,
            validator:validate(),
            decoration: InputDecoration(
                labelText: label,
                labelStyle: (TextStyle(
                  color:  HexColor('#A69994'),

                )),
                prefixIcon: Icon(
                  prefix,
                ),
                suffixIcon: suffix != null
                    ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
                    : null,
                border:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.0),

                ),enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.white
                ),
                    borderRadius:BorderRadius.circular(25.0)

                )


            ),
          ),
        ),
      ),
    );

Widget defaultFormField2(
        {Iterable<String>? autofill,
        List<TextInputFormatter>? format,
        TextEditingController? controller,
        TextInputType? type,
        Function? onSubmit,
        Function? onTap,
        Function? onChange,
        bool isPassword = false,
        Function? validate,
        String? label,
        IconData? prefix,
        IconData? suffix,
        Function? suffixPressed,
        bool isClickable = true,
        Widget? suffiix,
        context}) =>
    TextFormField(
      autofillHints: autofill,
      enableInteractiveSelection: true,
      inputFormatters: format,
      obscureText: isPassword,
      validator: (validate) {},
      controller: controller,
      keyboardType: type,
      onTap: () {
        onTap;
      },
      enabled: isClickable,
      onChanged: (v) {},
      onFieldSubmitted: (o) {},
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        suffixIcon: suffiix,
        prefixIcon: Icon(
          prefix,
        ),
      ),
    );

Widget myDivider({

  required double width
}) => Padding(
  padding: const EdgeInsetsDirectional.only(
      start: 15.0,
      end: 15.0
  ),
  child: Container(
    width: width,
    height: 2.0,
    color: Colors.black,
  ),
);

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

class TopBarContents extends StatefulWidget {
  TopBarContents();

  @override
  _TopBarContentState createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: NavigationBar
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, Colors.brown])),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 50,
              ),
              Image(image: AssetImage('assets/images/Group 1.png')),
              SizedBox(width: size.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About US',
                      style: TextStyle(
                        color:
                            _isHovering[0] ? Colors.white : HexColor('#C2C1C0'),
                        fontWeight: _isHovering[0]
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    if (_isHovering[0])
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 2,
                          width: 40,
                          color: HexColor('#FFE3C5'),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(width: size.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Adaption',
                      style: TextStyle(
                        color:
                            _isHovering[1] ? Colors.white : HexColor('#C2C1C0'),
                        fontWeight: _isHovering[1]
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    if (_isHovering[1])
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 2,
                          width: 40,
                          color: HexColor('#FFE3C5'),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(width: size.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        color:
                            _isHovering[2] ? Colors.white : HexColor('#C2C1C0'),
                        fontWeight: _isHovering[2]
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    if (_isHovering[2])
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 2,
                          width: 40,
                          color: HexColor('#FFE3C5'),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(width: size.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Request',
                      style: TextStyle(
                        color:
                            _isHovering[3] ? Colors.white : HexColor('#C2C1C0'),
                        fontWeight: _isHovering[3]
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    if (_isHovering[3])
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Container(
                          height: 2,
                          width: 40,
                          color: HexColor('#FFE3C5'),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              InkWell(
                onHover:(value)
                {
                  if(value){
                    setState(() {
                      _isHovering[5]=true;
                    });}
                  else setState(() {
                    _isHovering[5]=false;
                  });

                } ,
                onTap: (){},
                child:_isHovering[5]? Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:Colors.white),
                      color: Colors.white
                  ),
                  child: Center(
                    child: Text('Sign up',style: TextStyle(
                        color: _isHovering[5]?Colors.black:Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
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
                        color: _isHovering[5]?Colors.black:Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
              ),
              SizedBox(
                width: 20,),
              InkWell(
                onHover:(value)
                {
                  if(value){
                    setState(() {
                      _isHovering[4]=true;
                    });}
                  else setState(() {
                    _isHovering[4]=false;
                  });

                } ,
                onTap: (){},
                child:_isHovering[4]? Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color:Colors.white),
                      color: Colors.white
                  ),
                  child: Center(
                    child: Text('Sign up',style: TextStyle(
                        color: _isHovering[4]?Colors.black:Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
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
                    child: Text('Log In',style: TextStyle(
                        color: _isHovering[4]?Colors.black:Colors.white,
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
    );
  }
}


Widget myDefaultButton({
  double? hight,
  double? width,
  String? text,
  Function? onPressed
})=>Container(
  height:hight ,
  width:width ,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color: Colors.brown[800]
  ),
  child: MaterialButton(
    onPressed: ()=>onPressed,
    child: Text('$text',style: TextStyle(
        color: HexColor('#FFE3C5'),
        fontWeight: FontWeight.bold,
        fontSize: 30
    ),
    ),
  ),
);

Widget myDefaultButton2({
  double? hight,
  double? width,
  String? text,
  Function()? onPressed,
  Color? color,
  Color? textColor,
  String? image,
  bool? icon=false,
})=>Container(
  height:hight ,
  width:width ,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color:color,
      border:Border.all(color: Colors.grey)
  ),
  child: MaterialButton(
      onPressed:
      onPressed,
      child:Row(
        children: [
          if(icon==false)Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Image(image:AssetImage('$image',),
              width:35 ,
              height:35 ,),
          ),
          SizedBox(width:20,),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('$text',style: TextStyle(
                    color:textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 23
                ),
                ),
                if(icon==true)
                  SizedBox(width: 170
                    ,),
                if(icon==true)
                  Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
        ],
      )
  ),
);

Widget myDefaultTextButton({
  required String text,
  required Function onPressed

})=> TextButton(
  onPressed:()=>onPressed,
  child: Text('$text',
    style: TextStyle(color: Colors.brown[800],
        fontWeight: FontWeight.w600,
        fontSize: 17
    ),
  ),
);


Widget DropDown({
  required double height,
  required double width,
  required List dropItems,
  required String selectedItem,
  required String hintText


})=>Card(

  elevation: 5,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)),
  child: Container(
    height:height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: DropdownButtonFormField2(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none
        //Add more decoration as you want here
      ),
      isExpanded: true,
      hint:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          hintText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,

              color:  HexColor('#A69994')
          ),

        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.keyboard_arrow_down,
          color: HexColor('#492F24'),
        ),
      ),
      iconSize: 30,
      buttonHeight: 150,
      buttonPadding: const EdgeInsets.only(left: 20, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      items: dropItems
          .map((item) =>
          DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select gender.';
        }
      },
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: (value) {
        selectedItem = value.toString();
      },
    ),
  ),
);