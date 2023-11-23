import 'package:flutter/material.dart';
import 'package:letterku/author.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/controller.dart';
import 'package:letterku/discover.dart';
import 'package:letterku/genre.dart';
import 'package:letterku/model.dart';
import 'package:letterku/sinopsis.dart';
import 'package:letterku/views/account_edit.dart';
import 'package:letterku/fantasy.dart';

class MainMenuScreen extends StatefulWidget{
  State createState() => _CreateMainMenu();
}

class _CreateMainMenu extends State<MainMenuScreen>{
  final MainMenuController controller = MainMenuController();

  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Container(
              height: 60,
              color: Colors.white,
              child: Expanded(child: buildAppBar()),
            ),
            Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 350,
                      child: buildListViewAtas(),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      height: 150,
                      child: buildExploreGenre(),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 11,
                              child: Text(
                                "Explore by Author",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                              )),
                          Expanded(
                              flex: 1,
                              child: TextButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Author1()));

                                  },
                                  child: Icon(Icons.arrow_right_alt, size: 30, color: Colors.deepOrangeAccent)
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      child: buildListViewBawah(),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  Column buildExploreGenre() {
    return Column(
                      children: [
                        Container(
                          height: 30,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 11,
                                  child: Text(
                                      "Explore by Genre",
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  )),
                              Expanded(
                                flex: 1,
                                  child: TextButton(
                                      onPressed: (){
                                        controller.navigatetoGenre(context);
                                      },
                                      child: Icon(Icons.arrow_right_alt, size: 30, color: Colors.deepOrangeAccent)
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Stack(
                                    children: [
                                      Image.asset("romance.png",
                                      fit: BoxFit.cover,
                                      height: 120,
                                      width: 200),
                                      Positioned.fill(
                                          child: Align(
                                           alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Text(
                                                "Romance",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              )
                                            ),
                                          ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white, // Background color
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Fantasy()));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Stack(
                                      children: [
                                        Image.asset("cuckoss_calling.jpg",
                                            fit: BoxFit.cover,
                                            height: 120,
                                            width: 200),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  "Fantasy",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                )
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
  }

  ListView buildListViewBawah() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
          width: 200,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Image.asset(
                    'wibu.png',
                    width: 180,
                    height: 260,
                    fit:BoxFit.fill
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 180,
                  height: 20,
                  child: Text("Tensei Shitara", textAlign: TextAlign.left,)
              ),
              Container(
                width: 180,
                height: 20,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 2, 0, 0),
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
          width: 160,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Image.asset(
                    'risa.png',
                    width: 180,
                    height: 260,
                    fit:BoxFit.fill
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 180,
                  height: 20,
                  child: Text("Risa Saraswati", textAlign: TextAlign.left,)
              ),
              Container(
                width: 180,
                height: 20,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 2, 0, 0),
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
          width: 160,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Image.asset(
                    'olympus.png',
                    width: 180,
                    height: 260,
                    fit:BoxFit.fill
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 180,
                  height: 20,
                  child: Text("Rick Riordan", textAlign: TextAlign.left,)
              ),
              Container(
                width: 180,
                height: 20,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 2, 0, 0),
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }



  ListView buildListViewAtas() {
    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          width: 200,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                child: Container(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // Background color
                                    ),
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Sinopsis()));
                                      },
                                    child: Image.asset(
                                        'tentangkamu.png',
                                        width: 180,
                                        height: 260,
                                        fit:BoxFit.fill
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                width: 180,
                                height: 20,
                                child: Text("Tentang Kamu", textAlign: TextAlign.left,)
                              ),
                              Container(
                                  width: 180,
                                  height: 20,
                                  child: Row(
                                    children: [
                                      Icon(Icons.star, size: 20, color: Colors.orangeAccent,),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(5, 2, 0, 0),
                                        height: 20,
                                        child: Text("4.6"),
                                      )
                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          width: 160,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                child: Image.asset(
                                    'negeriparabedebah.png',
                                    width: 180,
                                    height: 260,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  width: 180,
                                  height: 20,
                                  child: Text("Negeri Para Bededah", textAlign: TextAlign.left,)
                              ),
                              Container(
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Icon(Icons.star, size: 20, color: Colors.orangeAccent,),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 0, 0),
                                      height: 20,
                                      child: Text("4.3"),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          width: 160,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                child: Image.asset(
                                    'lautbercerita.png',
                                    width: 180,
                                    height: 260,
                                    fit:BoxFit.fill
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  width: 180,
                                  height: 20,
                                  child: Text("Laut Bercerita", textAlign: TextAlign.left,)
                              ),
                              Container(
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Icon(Icons.star, size: 20, color: Colors.orangeAccent,),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 0, 0),
                                      height: 20,
                                      child: Text("4.6"),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      height: 60,
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                width: 100,
                child: TextButton(
                  onPressed: null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.deepOrangeAccent,
                        size: 25,
                      ),
                      Text("Home", style: TextStyle(color: Colors.deepOrangeAccent))
                    ],
                  ),
                ),
              ),),
              Expanded(
                child:Container(
                width: 100,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscoverScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.grey.shade600,size: 25,),
                      Text("Discover", style: TextStyle(color: Colors.grey.shade600))
                    ],
                  ),
                ),
              ),),
              Expanded(
                child:Container(
                width: 100,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BookmarkScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bookmarks, color: Colors.grey.shade600,size: 25,),
                      Text("Bookmark", style: TextStyle(color: Colors.grey.shade600))
                    ],
                  ),
                ),
              ),),
              Expanded(
                child:Container(
                width: 100,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountEdit()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: Colors.grey.shade600,size: 25,),
                      Text("Account", style: TextStyle(color: Colors.grey.shade600))
                    ],
                  ),
                ),
              ),),
            ],
          )
      ),
    );
  }

  Row buildAppBar() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset("messageImage_1696588827553.jpg",
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
            );
  }
}