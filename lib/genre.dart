import 'package:flutter/material.dart';
import 'package:letterku/main_menu.dart';

import 'controller.dart';
import 'model.dart';

class Genre extends StatelessWidget {
  final ImageWithText genreModel;
  Genre(this.genreModel);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: <Widget>[
              Image.asset(
                genreModel.imagePath,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      genreModel.text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

class Genre1 extends StatelessWidget {
  final ToMainMenu controller = ToMainMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        controller.navigatetoMainMenu(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  width: 215,
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      child: Image.asset('assets/k.png',
                          height: 30),
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    ),
                    Container(
                      child: DefaultTextStyle(
                        style: TextStyle(color: Colors.black, fontSize: 20,
                            fontWeight: FontWeight.bold),
                        child: Text("LetterKu"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                    'Explore By Genre',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold))),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/romance.png', 'Romance')),
                Genre(ImageWithText('assets/fantasy.png', 'Fantasy')),
              ],
            ),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/horror.png', 'Horror')),
                Genre(ImageWithText('assets/mystery.png', 'Mystery')),
              ],
            ),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/comedy.png', 'Comedy')),
                Genre(ImageWithText('assets/action.png', 'Action')),
              ],
            ),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/adventure.png', 'Adventure')),
                Genre(ImageWithText('assets/psychological.png', 'Psychological')),
              ],
            ),
            Row(
              children: <Widget>[
                Genre(ImageWithText('assets/biography.png', 'Biography')),
                Genre(ImageWithText('assets/art.png', 'Art')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

