// lib/screens/home/sections/BookPage.dart

import 'package:flutter/material.dart';

import '../../../api/generated_books.dart';
import '../../../models/books.dart';
import '../../market/filters/search_bar.dart'; 
class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  List<Book> _allBooks = [];
  List<Book> _filteredBooks = [];

  @override
  void initState() {
    super.initState();
    _allBooks = getAllBooks();
    _filteredBooks = _allBooks;
  }

  void _onSearchChanged(String query) {
    setState(() {
      _filteredBooks = _allBooks
          .where((book) => book.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: Column(
        children: [
          SearchBarSection(onSearchChanged: _onSearchChanged),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredBooks.length,
              itemBuilder: (context, index) {
                Book book = _filteredBooks[index];
                return ListTile(
                  leading: Image.network(book.imageUrl),
                  title: Text(book.title),
                  subtitle: Text(book.authorName),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
