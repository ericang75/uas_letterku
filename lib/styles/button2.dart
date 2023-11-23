import 'package:flutter/material.dart';

final ButtonStyle buttonSecondary = ElevatedButton.styleFrom(
    minimumSize: Size(150, 50),
    backgroundColor: Colors.white,
    elevation: 0,
    side: BorderSide(
        color: Colors.deepOrange, // Color of the outline
        width: 2.0,),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
          Radius.circular(50)
      ),
    )
);