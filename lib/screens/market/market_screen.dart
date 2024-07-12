import 'package:flutter/material.dart';
import 'package:lithabit/api/generated_books.dart'; // Adjust imports as per your file structure
import 'package:lithabit/screens/market/filters/filter_row_section.dart';
import 'package:lithabit/screens/market/suggestions/discount_books.dart';
import 'package:lithabit/screens/market/suggestions/popular_books.dart';
import 'package:lithabit/screens/market/suggestions/trend_books.dart';
import 'package:lithabit/screens/market/filters/search_bar.dart';
import 'package:lithabit/models/books.dart'; // Adjust the import as per your file structure

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
          "Market",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent, // Change app bar background color here
      ),
      backgroundColor: Colors.grey[300], // Change background color of the whole page here
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarSection(onSearchChanged: _onSearchChanged),
              const SizedBox(height: 24),
              _buildFilterSection(),
              const SizedBox(height: 30),
              _buildSection(context, "Trending Books", TrendBooks(books: _filteredBooks)),
              const SizedBox(height: 24),
              _buildSection(context, "Popular Books", PopularBooks(books: _filteredBooks)),
              const SizedBox(height: 24),
              _buildSectionTitle(context, "Discount Books"),
              DiscountBooks(books: _filteredBooks),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterSection() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FilterRowSection(
          onFilterChanged: (Category category) {
            _onFilterChanged(category);
          },
        ),
      ),
    );
  }


  Widget _buildSectionTitle(BuildContext context, String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, Widget bookWidget) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle(context, title),
          const SizedBox(height: 8),
          bookWidget,
        ],
      ),
    );
  }
}

