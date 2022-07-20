import 'package:flutter/material.dart';
import 'package:project3/product.dart';
import 'FirstPage.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>FirstPage(),
        '/MyProduct':(context)=>MyProduct(),
      },
    ),
  );
}