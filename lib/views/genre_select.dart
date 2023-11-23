import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letterku/views/complete_profile.dart';
import 'package:letterku/styles/button2.dart';
import 'package:letterku/views/age_select.dart';
import 'package:letterku/styles/buttonSelected.dart';


class GenreSelect extends StatefulWidget {
  @override
  State createState() => GenreSelectState();
}

class GenreSelectState extends State<GenreSelect> {
  bool isRomanceSelected  = false;
  bool isFantasySelected  = false;
  bool isHorrorSelected  = false;
  bool isMysterySelected  = false;
  bool isComedySelected  = false;
  bool isActionSelected  = false;
  bool isAdventureSelected  = false;
  bool isPsychologicalSelected  = false;
  bool isDramaSelected  = false;
  bool isScienceSelected  = false;
  bool isBiographySelected  = false;
  bool isArtSelected  = false;

  void onPressedRomance(){
    setState(() {
      isRomanceSelected = !isRomanceSelected;
    });
  }

  void onPressedFantasy(){
    setState(() {
      isFantasySelected = !isFantasySelected;
    });
  }

  void onPressedHorror(){
    setState(() {
      isHorrorSelected = !isHorrorSelected;
    });
  }

  void onPressedMystery(){
    setState(() {
      isMysterySelected = !isMysterySelected;
    });
  }

  void onPressedComedy(){
    setState(() {
      isComedySelected = !isComedySelected;
    });
  }

  void onPressedAction(){
    setState(() {
      isActionSelected = !isActionSelected;
    });
  }

  void onPressedAdventure(){
    setState(() {
      isAdventureSelected = !isAdventureSelected;
    });
  }

  void onPressedPsychological(){
    setState(() {
      isPsychologicalSelected = !isPsychologicalSelected;
    });
  }

  void onPressedDrama(){
    setState(() {
      isDramaSelected = !isDramaSelected;
    });
  }

  void onPressedScience(){
    setState(() {
      isScienceSelected = !isScienceSelected;
    });
  }

  void onPressedBiography(){
    setState(() {
      isBiographySelected = !isBiographySelected;
    });
  }

  void onPressedArt(){
    setState(() {
      isArtSelected = !isArtSelected;
    });
  }

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
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AgeSelect())),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 40),
              child: Text(
                'Choose The Book Genre You Like',
                style: GoogleFonts.inter(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Select your preferred book genre for better recommendations, or you can skip it',
                style: GoogleFonts.inter(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 40, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: isRomanceSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedRomance,
                          child: Text('Romance', style: GoogleFonts.inter(fontSize: 17
                              , color: isRomanceSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 40, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style:  isFantasySelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedFantasy,
                          child: Text('Fantasy', style: GoogleFonts.inter(fontSize: 17
                              , color: isFantasySelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: isHorrorSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedHorror,
                          child: Text('Horror', style: GoogleFonts.inter(fontSize: 17
                              , color: isHorrorSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style:  isMysterySelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedMystery,
                          child: Text('Mystery', style: GoogleFonts.inter(fontSize: 17
                              , color: isMysterySelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: isComedySelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedComedy,
                          child: Text('Comedy', style: GoogleFonts.inter(fontSize: 17
                              , color: isComedySelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style:  isActionSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedAction,
                          child: Text('Action', style: GoogleFonts.inter(fontSize: 17
                              , color: isActionSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: isAdventureSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedAdventure,
                          child: Text('Adventure', style: GoogleFonts.inter(fontSize: 17
                              , color: isAdventureSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style:  isPsychologicalSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedPsychological,
                          child: Text('Psychological', style: GoogleFonts.inter(fontSize: 16
                              , color: isPsychologicalSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: isDramaSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedDrama,
                          child: Text('Drama', style: GoogleFonts.inter(fontSize: 17
                              , color: isDramaSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style:  isScienceSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedScience,
                          child: Text('Science', style: GoogleFonts.inter(fontSize: 17
                              , color: isScienceSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: isBiographySelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedBiography,
                          child: Text('Biography', style: GoogleFonts.inter(fontSize: 17
                              , color: isBiographySelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style:  isArtSelected? buttonSecondarySelected : buttonSecondary,
                          onPressed: onPressedArt,
                          child: Text('Art', style: GoogleFonts.inter(fontSize: 17
                              , color: isArtSelected? Colors.white : Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 80, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          style: buttonSecondary,
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => CompleteProfile() )),
                          child: Text('SKIP', style: GoogleFonts.inter(fontSize: 17
                              , color: Colors.deepOrange, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.only(top: 80, left: 40),
                    child:
                    Column (
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => CompleteProfile() )),
                          child: Text('CONTINUE', style: GoogleFonts.inter(fontSize: 17
                              , color: Colors.white, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,
                          minimumSize: Size(150, 50),
                              elevation: 0,
                              side: BorderSide(
                                color: Colors.deepOrange, // Color of the outline
                                width: 2.0,),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                              ) )
                        )
                      ],
                    )
                )
              ],
            )
          ]),
    )));
  }
}
