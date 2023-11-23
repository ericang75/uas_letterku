import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/controller.dart';
import 'package:letterku/discover.dart';
import 'package:letterku/genre.dart';
import 'package:letterku/sinopsis.dart';
import 'package:letterku/main_menu.dart';
import 'package:letterku/model.dart';


class Fantasy extends StatelessWidget {
  final FantasyController controller = FantasyController();

  @override
  Widget build(BuildContext context) {
    List<FantasyBooks> fantasyBooks = controller.getFantasyBooks();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    controller.navigatetoMainMenu(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
                SizedBox(width: 215),
                Row(
                  children: [
                    Container(
                      child: Image.asset('assets/messageImage_1696588827553.jpg', height: 30),
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    ),
                    DefaultTextStyle(
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      child: Text("LetterKu"),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 240),
              child: Text(
                'Fantasy',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
              child:GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemCount: fantasyBooks.length,
              itemBuilder: (context, index) {
                var book = fantasyBooks[index];
                return ImageWithText(book.imagePath, book.text, book.text2);
                },
              ),
            )
          ],
        ),
        ]
      ),
    )
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String text;
  final String text2;

  ImageWithText(this.imagePath, this.text, this.text2);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: <Widget>[
            Image.asset(imagePath, width: 150, height: 240),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text(
                        text2,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
