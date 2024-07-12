// lib/screens/market/filters/search_bar.dart

import 'package:flutter/material.dart';

class SearchBarSection extends StatelessWidget {
  final Function(String) onSearchChanged;

  const SearchBarSection({Key? key, required this.onSearchChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearchChanged,
      decoration: InputDecoration(
        hintText: 'Search here... ',
        suffixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.grey[50],
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
