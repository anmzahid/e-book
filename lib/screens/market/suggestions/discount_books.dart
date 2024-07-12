import 'package:flutter/material.dart';
import 'package:lithabit/models/books.dart';

class DiscountBooks extends StatelessWidget {
  final List<Book> books;

  const DiscountBooks({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discount Books',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 16),
        Column(
          children: books.map((book) {
            return Card(
              child: ListTile(
                leading: Image.network(
                  book.imageUrl,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
                title: Text(book.title),
                subtitle: Text('by ${book.authorName}'),
                trailing: Text('\৳${(book.price*130).toString()}'),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
