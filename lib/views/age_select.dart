import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letterku/styles/button.dart';
import 'package:letterku/views/gender_select.dart';
import 'package:letterku/views/genre_select.dart';

class AgeSelect extends StatefulWidget{
  @override
  State createState() => AgeSelectState();
}

class AgeSelectState extends State<AgeSelect> {
  String age = "age";
  Widget build(BuildContext context) {
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
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => GenderSelect() )),
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ],
          ),
            Container(
              padding: EdgeInsets.only(left: 40),
                child:
                Text('Choose Your Age',
                style: GoogleFonts.inter(fontSize: 28
                , color: Colors.black, fontWeight: FontWeight.w800),),
        ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 40),
                child:
                Text('Select age range for better content',
                style: GoogleFonts.inter(fontSize: 17
                , color: Colors.black, fontWeight: FontWeight.w300),),
        ),
          Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              child:
              Column (
                  children: [
                    RadioListTile(
                      title: Text("14 - 17", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "1",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("18 - 24", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "2",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("25 - 29", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "3",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("30 - 34", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "4",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("35 - 39", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "5",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("40 - 44", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "6",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("45 - 49", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "7",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      title: Text("≥ 50", style: GoogleFonts.inter(fontSize: 17
                          , color: Colors.black)),
                      value: "8",
                      groupValue: age,
                      onChanged: (value){
                        setState(() {
                          age = value.toString();
                        });
                      },
                    )
                  ]
              )
          ),
          Container(
              padding: EdgeInsets.only(top: 50, left: 30),
              child:
              Column (
                children: [
                  ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => GenreSelect() )),
                    child: Text('CONTINUE', style: GoogleFonts.inter(fontSize: 17
                        , color: Colors.white, fontWeight: FontWeight.bold)),
                  )
                ],
              )
          )
      ]
    ),
    )

    )
    );
  }
}