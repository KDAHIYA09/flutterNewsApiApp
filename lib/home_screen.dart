import 'dart:convert';

import 'package:flutter/material.dart';

//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MediaQuery(
//       data: MediaQuery.of(context).copyWith(textScaleFactor: 0.90),
//       child:Scaffold(
//       appBar: AppBar(
//       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//     title: Text(widget.title),
//     ),
//     floatingActionButton: FloatingActionButton(
//     onPressed: fetchNews,
//     child: const Icon(Icons.add),
//     ),
//     body: Container(
//     // Provide explicit height and width constraints
//     width: double.infinity, // or specify a width that fits your layout
//     height: double.infinity, // or specify a height that fits your layout
//     child: ListView.builder(
// physics: NeverScrollableScrollPhysics(),
//     itemCount: newsItem.length,
//     itemBuilder: (context, index) {
//     final news = newsItem[index];
//     final heading = news['title'];
//     final author = news['author'];
//     final timestamp = news['publishedAt'];
//     final imageUrl = news['urlToImage'];
//
//     return ListTile(
//     leading: imageUrl != null && imageUrl.isNotEmpty
//     ? Image.network(
//     imageUrl,
//     height: 100,
//     width: 100,
//     fit: BoxFit.cover,
//     )
//         : Placeholder(
//     fallbackHeight: 100,
//     fallbackWidth: 100,
//     ),
//     title: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     Text(
//     heading,
//     style: TextStyle(
//     fontSize: 14, fontWeight: FontWeight.bold),
//     ),
//     Text(
//     'by $author',
//     style: TextStyle(
//     fontSize: 13, fontWeight: FontWeight.w400),
//     ),
//     Text(
//     timestamp,
//     style: TextStyle(
//     fontSize: 10, fontWeight: FontWeight.w200),
//     ),
//     ],
//     ),
//     );
//     },
//     ),
//     ),
//     )
//     );
//   }
//
//
// }
