import '../models/books.dart';

List<Book> getBooksByType(Category category) {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.category == category).toList();
}

List<Book> getBooksByPurchased() {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.isPurchased == true).toList();
}

List<Book> getBooksByFree() {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.isPurchased == true).toList();
}

List<Book> getBooksByOpenPage(int page) {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.lastOpenPage >= page).toList();
}

List<Book> getAllBooks() {
  return [
    Book(
      title: 'REMINDER OF HIM COLLEEN HOOVER',
      category: Category.artAndLit,
      isbn: '9780140174922',
      price: 9.99,
      isFree: false,
      isPurchased: false,
      description:
          'A comprehensive guide to the art of writing fiction, covering aspects such as character development, plot construction, and narrative techniques.',
      rating: 4.5,
      yearRelease: 2021,
      pages: 320,
      authorName: 'David Lodge',
      imageUrl:
          'https://m.media-amazon.com/images/I/418HLIXlxCL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 50,
      totalXP: 100,
    ),
    Book(
      title: 'The Lean Startup',
      category: Category.business,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description:
          'An innovative approach to building and growing startups, focusing on rapid experimentation, validated learning, and iterative product development.',
      rating: 4.8,
      pages: 336,
      yearRelease: 2020,
      authorName: 'Eric Ries',
      imageUrl:
          'https://m.media-amazon.com/images/I/51mFoFmu0EL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 240,
    ),
    Book(
      title: 'The Power of Now',
      category: Category.business,
      isbn: '9781577314806',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description:
          'A spiritual guide to living in the present moment and finding enlightenment, offering practical advice and insights for achieving inner peace and happiness.',
      rating: 4.6,
      pages: 236,
      yearRelease: 2020,
      authorName: 'Eckhart Tolle',
      imageUrl:
          'https://m.media-amazon.com/images/I/513lEQAd06L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 198,
    ),
    Book(
      title: 'How Not to Die',
      category: Category.health,
      isbn: '9781250066114',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description:
          'A compelling read on the foods scientifically proven to prevent and reverse disease.',
      rating: 4.7,
      yearRelease: 2015,
      pages: 576,
      authorName: 'Michael Greger',
      imageUrl:
          'https://m.media-amazon.com/images/I/61dIUbhBA3L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Atomic Habits',
      category: Category.business,
      isbn: '9780735211292',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'An easy & proven way to build good habits & break bad ones.',
      rating: 4.8,
      yearRelease: 2018,
      pages: 320,
      authorName: 'James Clear',
      imageUrl:
          'https://m.media-amazon.com/images/I/41pTqRlersL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Sapiens: A Brief History of Humankind',
      category: Category.technology,
      isbn: '9780062316097',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Explores the history of humankind from the Stone Age to the present.',
      rating: 4.7,
      yearRelease: 2015,
      pages: 498,
      authorName: 'Yuval Noah Harari',
      imageUrl:
          'https://m.media-amazon.com/images/I/41x4eg5KyGL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Educated: A Memoir',
      category: Category.artAndLit,
      isbn: '9780399590504',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'A memoir by Tara Westover, recounting her struggle for education.',
      rating: 4.7,
      yearRelease: 2018,
      pages: 334,
      authorName: 'Tara Westover',
      imageUrl:
          'https://m.media-amazon.com/images/I/41ORbvdT5ZL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Deep Work',
      category: Category.romance,
      isbn: '9781455586691',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Rules for focused success in a distracted world.',
      rating: 4.6,
      yearRelease: 2016,
      pages: 304,
      authorName: 'Cal Newport',
      imageUrl:
          'https://m.media-amazon.com/images/I/4120mVtteHL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Thinking, Fast and Slow',
      category: Category.science,
      isbn: '9780374533557',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Examines the two systems that drive the way we think.',
      rating: 4.5,
      yearRelease: 2011,
      pages: 499,
      authorName: 'Daniel Kahneman',
      imageUrl:
          'https://m.media-amazon.com/images/I/41Y8Fw7UhQL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'The Power of Habit',
      category: Category.business,
      isbn: '9781400069286',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'Why we do what we do in life and business.',
      rating: 4.6,
      yearRelease: 2012,
      pages: 371,
      authorName: 'Charles Duhigg',
      imageUrl:
          'https://m.media-amazon.com/images/I/41+QqNWz2qL._SY344_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
  ];
}
