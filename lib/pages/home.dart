import 'package:flutter/material.dart';
import 'package:mobile_1/pages/details.dart';
import 'package:mobile_1/pages/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  bool chair=false, bed=false,sofar=false,table=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        Text("Hello, Uvini", style:AppWidget.boldTextFeildStyle()),
            Container(
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.all(3 ),
              decoration: BoxDecoration(color: Colors.black),
              child: Icon(Icons.shopping_cart, color:Colors.white,),
            )
          ],
        ),
          SizedBox(height: 10.0,),
          Text("Items of Furniture", style:AppWidget.HeadlineTextFeildStyle()),
            Text("Discover and Get Great Furniture", style:AppWidget.LightTextFeildStyle()),
            SizedBox(height: 10.0,),
            Container(
                margin: EdgeInsets.only(right: 20.0),
                child: showItem()),
            SizedBox(height: 30.0,),
            SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Details()));

                  },
                  child: Container(
                    margin:EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/Chair2.jpeg",height:120, width: 120, fit:BoxFit.cover,),
                            SizedBox(height:5.0,),
                          Text("Wooden chair", style: AppWidget.boldTextFeildStyle(),),
                          SizedBox(height:5.0,),
                          Text("Water proofer", style: AppWidget.LightTextFeildStyle(),),
                            SizedBox(height:5.0,),
                            Text("\$20", style:AppWidget.boldTextFeildStyle() ,)
                        ],),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/Chair2.jpeg",height:120, width: 120, fit:BoxFit.cover,),
                          SizedBox(height:5.0,),
                          Text("Adirondack chair", style: AppWidget.boldTextFeildStyle(),),
                          SizedBox(height:5.0,),
                          Text("Outdoor lounge chair", style: AppWidget.LightTextFeildStyle(),),
                          SizedBox(height:5.0,),
                          Text("\$30", style:AppWidget.boldTextFeildStyle() ,)
                        ],),
                    ),
                  ),
                ),

              ],),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/Chair2.jpeg", height: 120, width: 120,fit:BoxFit.cover,
                    ),
                    SizedBox(width: 20.0,),
                    Column( children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                          child: Text("Director's chairs",style: AppWidget.boldTextFeildStyle(),)),
                      SizedBox(height: 5.0,),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("High Quality",style: AppWidget.LightTextFeildStyle(),)),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("\$28",style: AppWidget.LightTextFeildStyle(),)),
                    ],)
                  ],),


                ),
              ),
            ),
      ],
    ),
    ),
    );
  }
  Widget showItem(){
    return  Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            chair=true;
            bed=false;
            sofar=false;
            table=false;
            setState(() {
            });

          },
          child: Material(
            elevation:5.0 ,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:BoxDecoration(color: chair?Colors.black:Colors.white,borderRadius: BorderRadius.circular(10)) ,
              padding:EdgeInsets.all(8),
              child: Image.asset("images/chair.png", height: 40,width: 40,fit:BoxFit.cover,color: chair? Colors.white: Colors.black,) ,
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            chair=false;
            bed=true;
            sofar=false;
            table=false;
            setState(() {

            });

          },
          child: Material(
            elevation:5.0 ,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:BoxDecoration(color: bed?Colors.black:Colors.white,borderRadius: BorderRadius.circular(10)) ,
              padding:EdgeInsets.all(8),
              child: Image.asset("images/bed.png", height: 40,width: 40,fit:BoxFit.cover,color: bed? Colors.white: Colors.black,) ,
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            chair=false;
            bed=false;
            sofar=true;
            table=false;
            setState(() {

            });

          },
          child: Material(
            elevation:5.0 ,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:BoxDecoration(color: sofar?Colors.black:Colors.white,borderRadius: BorderRadius.circular(10)) ,
              padding:EdgeInsets.all(8),
              child: Image.asset("images/sofar.png", height: 40,width: 40,fit:BoxFit.cover,color: sofar? Colors.white: Colors.black,) ,
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            chair=false;
            bed=false;
            sofar=false;
            table=true;
            setState(() {

            });

          },
          child: Material(
            elevation:5.0 ,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration:BoxDecoration(color: table?Colors.black:Colors.white,borderRadius: BorderRadius.circular(10)) ,
              padding:EdgeInsets.all(8),
              child: Image.asset("images/table.png", height: 40,width: 40,fit:BoxFit.cover,color: table? Colors.white: Colors.black,) ,
            ),
          ),
        ),




      ],);

  }
}



