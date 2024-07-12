import 'package:flutter/material.dart';
import 'package:lithabit/screens/home/sections/all_purchased_books.dart';
import 'package:lithabit/screens/home/sections/BookPage.dart'; // Import BooksPage
import 'package:lithabit/widgets/keep_reading_section.dart';
import 'package:lithabit/widgets/last_opened_book.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Smart book",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BooksPage()),
              );
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LastOpenedBook(),
              KeepReadingSection(),
              AllPurchasedBooks(),
            ],
          ),
        ),
      ),
    );
  }
}
