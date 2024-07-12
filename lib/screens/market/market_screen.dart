import 'package:flutter/material.dart';
import 'package:lithabit/api/generated_books.dart';
import 'package:lithabit/models/books.dart';
import 'package:lithabit/screens/market/filters/filter_row_section.dart';
import 'package:lithabit/screens/market/suggestions/discount_books.dart';
import 'package:lithabit/screens/market/suggestions/popular_books.dart';
import 'package:lithabit/screens/market/suggestions/trend_books.dart';
import 'package:lithabit/screens/market/filters/search_bar.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  List<Book> _allBooks = [];
  List<Book> _filteredBooks = [];

  @override
  void initState() {
    super.initState();
    _allBooks = getAllBooks(); // Assuming you have a function to get all books
    _filteredBooks = _allBooks;
  }

  void _onSearchChanged(String query) {
    setState(() {
      _filteredBooks = _allBooks
          .where((book) => book.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _onFilterChanged(Category category) {
    setState(() {
      _filteredBooks = getBooksByType(category);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MarketPlace",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarSection(onSearchChanged: _onSearchChanged),
              const SizedBox(height: 24),
              FilterRowSection(onFilterChanged: _onFilterChanged),
              const SizedBox(height: 24),
              TrendBooks(books: _filteredBooks),
              const SizedBox(height: 24),
              PopularBooks(books: _filteredBooks),
              const SizedBox(height: 24),
              DiscountBooks(books: _filteredBooks),
            ],
          ),
        ),
      ),
    );
  }
}
