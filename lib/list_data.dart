import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {

  List<dynamic> newsItem = [];
  @override
  void initState() {
    super.initState();
   fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Provide explicit height and width constraints
        width: double.infinity, // or specify a width that fits your layout
        height: double.infinity, // or specify a height that fits your layout
        child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          itemCount: newsItem.length,
          itemBuilder: (context, index) {
            final news = newsItem[index];
            final heading = news['title'];
            final author = news['author'];
            final timestamp = news['publishedAt'];
            final imageUrl = news['urlToImage'];

            return

              ListTile(
                leading: SizedBox(
                  width: 100,
                  child: imageUrl != null && imageUrl.isNotEmpty
                      ? Image.network(
                    imageUrl,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  )
                      : Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'by $author',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      timestamp,
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              );

          },
        ),
      ),
    );
  }
  void fetchNews() async {
    print('Fetching news data...');
    try {
      final url =
          'https://newsapi.org/v2/everything?q=keyword&apiKey=3097b7e308dc4a7bbca2b3eeec497902';
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        setState(() {
          newsItem = json['articles'];
        });
        print('News data fetched successfully');
      } else {
        print('Failed to fetch news data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching news data: $error');
    }
  }
}
