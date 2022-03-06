import 'package:car/curve.dart';
import 'package:car/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class register
      extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void click() {
      Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => login())
        ,);
    }
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            curve(),

            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 55.0.h,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,


                    children: [

                      SizedBox(height: 2.0.h,),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 7.5.h,
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: "User name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 1.2.h,),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 7.5.h,
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: "Email Id",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 1.2.h,),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 7.5.h,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              )
                          ),
                        ),
                      ),

                      SizedBox(height: 2.0.h,),

                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Color(0xff3fbcef)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Register',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),


                      Row(
                        children: [
                          Text("You Already have an account?",style: TextStyle(color: Colors.black),),
                          TextButton(
                            onPressed: click,
                            child: const Text("Login",
                              style: TextStyle(
                                  color: Color(0xff3fbcef)
                              ),
                            ),
                          )
                        ],
                      )


                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}