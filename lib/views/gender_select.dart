import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letterku/styles/button.dart';
import 'package:letterku/views/age_select.dart';

class GenderSelect extends StatefulWidget{
  @override
  State createState() => GenderSelectState();
}

class GenderSelectState extends State<GenderSelect>{
  String gender = "male";

  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 18, height: 100,),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => AgeSelect())),
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.only(bottom : 20, left: 40),
                      child:
                      Text('What Is Your Gender?',
                        style: GoogleFonts.inter(fontSize: 28
                            , color: Colors.black, fontWeight: FontWeight.w800),),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 40),
                      child:
                      Text('Select gender for better content',
                        style: GoogleFonts.inter(fontSize: 17
                            , color: Colors.black, fontWeight: FontWeight.w300),),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 30, left: 20),
                        child:
                        Column (
                            children: [
                              RadioListTile(
                                title: Text("I am male", style: GoogleFonts.inter(fontSize: 17
                                    , color: Colors.black)),
                                value: "male",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              SizedBox(height: 15),
                              RadioListTile(
                                title: Text("I am female", style: GoogleFonts.inter(fontSize: 17
                                    , color: Colors.black)),
                                value: "female",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              SizedBox(height: 15),
                              RadioListTile(
                                title: Text("Rather not to say", style: GoogleFonts.inter(fontSize: 17
                                    , color: Colors.black)),
                                value: "other",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              )
                            ]
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 300, left: 40),
                        child:
                        Column (
                          children: [
                            ElevatedButton(
                              style: buttonPrimary,
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => AgeSelect() )),
                              child: Text('CONTINUE', style: GoogleFonts.inter(fontSize: 17
                                  , color: Colors.white, fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}