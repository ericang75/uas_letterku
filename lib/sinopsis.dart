import 'package:flutter/material.dart';
import 'package:letterku/main_menu.dart';


class Sinopsis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(20)),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainMenuScreen()));
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
                    child: Image.asset('assets/messageImage_1696588827553.jpg',
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
           Row(
              children: <Widget>[
                SizedBox(width: 20),
                Image.asset('assets/tentangkamu.jpg', width: 150),
                SizedBox(width: 55,),
                Container(
                child: Column(
                    children: [
                      Text('Tentang Kamu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      Text('Tere liye', style: TextStyle(color: Colors.orangeAccent),),
                      Text('Released on Oct, 2016'),
                      Padding(padding: EdgeInsets.all(70))
                    ]
                )
                ),
              ]
           ),


          SizedBox(
            height: 10,
          ),

          Row(
            children: <Widget> [
              Padding(
                  padding: EdgeInsets.only(left: 100),
              ),
              Icon(Icons.star, size: 20, color: Colors.orangeAccent,),
              Text('4.6',),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text('I'),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text('4.8 MB'),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text('I'),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text('524'),
              Padding(padding: EdgeInsets.only(left: 10)),
            ],
          ),

          Row(
            children: <Widget> [
              Padding(
                padding: EdgeInsets.only(left: 80),
              ),
              Text('5K reviews', style: TextStyle(color : Colors.grey,) ),
              Padding(padding: EdgeInsets.only(left: 13)),
              Text('I'),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text('Size', style: TextStyle(color : Colors.grey,)),
              Padding(padding: EdgeInsets.only(left: 37)),
              Text('I'),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text('Pages', style: TextStyle(color : Colors.grey,)),
              Padding(padding: EdgeInsets.only(left: 10)),
            ],
          ),

          SizedBox(height: 10),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child :Text('About This Book', style: TextStyle(fontWeight: FontWeight.bold),)
              )
            ],
          ),

          SizedBox(height: 5),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child :Text('menceritakan perjuangan Zaman Zulkarnaen, seorang pengacara muda dari Thompson & Co. Suatu hari, Zaman dipanggil atasannya untuk menyelesaikan sebuah kasus hukum klien. Kasus tersebut adalah persoalan harta warisan yang ditinggalkan kliennya yang belum lama meninggal dunia.')
              )
            ],
          ),

          SizedBox(height: 20),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child :Text('Ratings & Review', style: TextStyle(fontWeight: FontWeight.bold),)
              )
            ],
          ),

          Row(
            children: <Widget> [
              Padding(
                padding: EdgeInsets.only(left: 70),
              ),
              Text('4.6', style: TextStyle(fontSize: 30),),
              Padding(padding: EdgeInsets.only(left: 20)),

            ],
          ),

          Row(
            children: <Widget> [
              Padding(
                padding: EdgeInsets.only(left: 30),
              ),
              Icon(Icons.star, size: 25, color: Colors.grey,),
              Icon(Icons.star, size: 25, color: Colors.grey,),
              Icon(Icons.star, size: 25, color: Colors.grey,),
              Icon(Icons.star, size: 25, color: Colors.grey,),
              Icon(Icons.star, size: 25, color: Colors.grey,),
              Padding(padding: EdgeInsets.only(left: 20)),
            ],
          ),



        ],
      ),
    );
  }
}