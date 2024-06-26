
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_1/pages/login.dart';
import 'package:mobile_1/pages/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String email="", password="", name="";

  TextEditingController namecontroller= new TextEditingController();

  TextEditingController passwordcontroller= new TextEditingController();

  TextEditingController mailcontroller= new TextEditingController();

  // registration() async {
  //   if (password != null) {
  //     try {
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(email: email, password: password);
  //
  //       ScaffoldMessenger.of(context).showSnackBar((SnackBar(
  //           backgroundColor: Colors.redAccent,
  //           content: Text(
  //             "Registered Successfully",
  //             style: TextStyle(fontSize: 20.0),
  //           ))));
  //     }on FirebaseException catch(e){
  //       if (e.code == 'weak-password') {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //             backgroundColor: Colors.orangeAccent,
  //             content: Text(
  //               "Password Provided is too Weak",
  //               style: TextStyle(fontSize: 18.0),
  //             )));
  //       } else if (e.code == "email-already-in-use") {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //             backgroundColor: Colors.orangeAccent,
  //             content: Text(
  //               "Account Already exsists",
  //               style: TextStyle(fontSize: 18.0),
  //             )));
  //       }
  //     }
  //   }
  // }

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
                SizedBox(height: 10.0,),
                Material(
                  elevation:5.0 ,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding:EdgeInsets.only(left:20.0,right: 20.0) ,
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height/1.8 ,
                    decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      SizedBox(height: 10.0,),
                      Text("Sign up", style: AppWidget.HeadlineTextFeildStyle(),),
                      SizedBox(
                        height: 3.0,
                      ),
                      TextField(
                        decoration: InputDecoration(hintText:'Name', hintStyle: AppWidget.semiBooldTextFeildStyle(), prefixIcon: Icon(Icons.person_outlined) ),
                      ),
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

                      SizedBox(height: 40,),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: 200 ,
                          decoration: BoxDecoration(color: Color(0Xffff5722),borderRadius: BorderRadius.circular(20)),
                          child:Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize:18.0, fontFamily: 'Poppins1', fontWeight:FontWeight.bold ),)),
                        ),
                      )


                    ],),
                  ),
                ),
                SizedBox(height: 50.0,),
                GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                    } ,
                    child: Text("Already have an account? Login",style:AppWidget.semiBooldTextFeildStyle() ,))
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

