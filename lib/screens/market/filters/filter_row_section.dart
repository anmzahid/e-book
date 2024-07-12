import 'package:flutter/material.dart';
import 'package:lithabit/models/books.dart';

class FilterRowSection extends StatefulWidget {
  final Function(Category) onFilterChanged;

  const FilterRowSection({Key? key, required this.onFilterChanged}) : super(key: key);

  @override
  _FilterRowSectionState createState() => _FilterRowSectionState();
}

class _FilterRowSectionState extends State<FilterRowSection> {
  final List<Category> filterOptions = [
    Category.artAndLit,
    Category.romance,
    Category.business,
    Category.health,
    Category.science,
    Category.technology,
  ];
  Category selectedFilter = Category.artAndLit;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filterOptions.map((filter) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedFilter = filter;
              });
              widget.onFilterChanged(filter);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Text(
                getCategoryString(filter),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: selectedFilter == filter ? Colors.black : Colors.grey[400],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
