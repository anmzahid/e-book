class Book {
  final String title;
  final Category category;
  final String isbn;
  final double price;
  final bool isFree;
  final bool isPurchased;
  final String description;
  final num rating;
  final num yearRelease;
  final num pages;
  final String authorName;
  final String imageUrl;
  final int lastOpenPage;
  final int totalXP;

  Book(
      {required this.title,
      required this.category,
      required this.isbn,
      required this.price,
      required this.isFree,
      required this.isPurchased,
      required this.description,
      required this.rating,
      required this.yearRelease,
      required this.pages,
      required this.authorName,
      required this.imageUrl,
      required this.lastOpenPage,
      required this.totalXP});
}

enum Category {
  artAndLit,
  romance,
  business,
  genres,
  health,
  science,
  technology,
}

String getCategoryString(Category category) {
  switch (category) {
    case Category.artAndLit:
      return 'Art & Lit';
    case Category.romance:
      return 'Romantic';
    case Category.business:
      return 'Business';
    case Category.genres:
      return 'Genres';
    case Category.health:
      return 'Health';
    case Category.science:
      return 'Science';
    case Category.technology:
      return 'Technology';
    default:
      return '';
  }
}
