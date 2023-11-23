import 'package:flutter/material.dart';
import 'package:letterku/author.dart';
import 'package:letterku/bookmarks.dart';
import 'package:letterku/main_menu.dart';
import 'package:letterku/sinopsis.dart';
import 'package:letterku/views/account_edit.dart';

class DiscoverScreen extends StatefulWidget{
  State createState() => _CreateDiscover();
}

class _CreateDiscover extends State<DiscoverScreen>{
  Widget build (BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.white,
                child: Expanded(child: buildAppBar()),
              ),
              Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          "Discovery",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                        flex: 11,
                        child: Text(
                          "Top Chart",
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        )),

                  ],
                ),
              ),
              Container(
                height: 350,
                child: buildListViewAtas(),
              ),
              Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                        flex: 11,
                        child: Text(
                          "Debut Authors",
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
        ),],
      ),

      bottomNavigationBar: buildBottomAppBar(),
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
                    'harrypotter.png',
                    width: 180,
                    height: 260,
                    fit:BoxFit.fill
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 180,
                  height: 20,
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
                    'troubled.png',
                    width: 180,
                    height: 260,
                    fit:BoxFit.fill
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 180,
                  height: 20,
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
                    'curseinfinity.png',
                    width: 180,
                    height: 260,
                    fit:BoxFit.fill
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  width: 180,
                  height: 20,
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainMenuScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.grey.shade600,
                          size: 25,
                        ),
                        Text("Home", style: TextStyle(color: Colors.grey.shade600))
                      ],
                    ),
                  ),
                ),),
              Expanded(
                child:Container(
                  width: 100,
                  child: TextButton(
                    onPressed: null,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search, color: Colors.deepOrangeAccent,size: 25,),
                        Text("Discover", style: TextStyle(color: Colors.deepOrangeAccent))
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
      mainAxisAlignment: MainAxisAlignment.end,
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