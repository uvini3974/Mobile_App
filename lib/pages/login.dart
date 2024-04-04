import 'package:flutter/material.dart';
import 'package:mobile_1/pages/signup.dart';
import 'package:mobile_1/pages/widget/widget_support.dart';
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LoginState();
}

class _LoginState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFEB3B), Color(0xFFe74b1a),
                      ])),
            ),
            Container(
              margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(children: [
                Center(child: Image.asset("images/logo.png", width: MediaQuery.of(context).size.width / 1.5, fit: BoxFit.cover,)),
                SizedBox(height: 15.0,),
                Material(
                  elevation:5.0 ,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding:EdgeInsets.only(left:20.0,right: 20.0) ,
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height/2 ,
                    decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      SizedBox(height: 10.0,),
                      Text("Login", style: AppWidget.HeadlineTextFeildStyle(),),
                      SizedBox(
                        height: 3.0,
                      ),
                      TextField(
                        decoration: InputDecoration(hintText:'Email', hintStyle: AppWidget.semiBooldTextFeildStyle(), prefixIcon: Icon(Icons.email_outlined) ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText:'Password', hintStyle: AppWidget.semiBooldTextFeildStyle(), prefixIcon: Icon(Icons.padding_outlined) ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                          alignment:Alignment.topRight,
                          child: Text("Forget Password", style: AppWidget.semiBooldTextFeildStyle(),)),
                      SizedBox(height: 30,),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: 200 ,
                          decoration: BoxDecoration(color: Color(0Xffff5722),borderRadius: BorderRadius.circular(20)),
                          child:Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize:18.0, fontFamily: 'Poppins1', fontWeight:FontWeight.bold ),)),
                        ),
                      )


                    ],),
                  ),
                ),
                SizedBox(height: 50.0,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                    child: Text("Don,t have a account? Sign up",style:AppWidget.semiBooldTextFeildStyle() ,))
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
