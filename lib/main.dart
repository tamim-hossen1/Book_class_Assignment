class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int _totalBooks = 0;

  Book(
      {required this.title,
      required this.author,
      required this.publicationYear,
      this.pagesRead = 0}) {
    _totalBooks++;
  }

  static int totalBook() {
    //return the total objected created.
    return _totalBooks;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    //return the Pages read you read
    return pagesRead;
  }

  String getTitle() {
    //return title of the book
    return title;
  }

  String getAuthor() {
    //return books author
    return author;
  }

  int getPublicationYear() {
    //return book publication year
    return publicationYear;
  }

  int getBookAge() {
    DateTime CurrentYear = DateTime.now();
    int age = CurrentYear.year - publicationYear;

    return age;
  }
}

void main() {
  Book b1 = Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austan',
      publicationYear: 1994,
      pagesRead: 0);

  Book b2 = Book(
      title: '1984',
      author: 'George Orwell',
      publicationYear: 1990,
      pagesRead: 0);

  Book b3 = Book(
      title: 'Jane Eyre',
      author: 'Charlotte Bronte',
      publicationYear: 2000,
      pagesRead: 0);

  b1.read(200);
  b2.read(300);
  b3.read(150);

//print first book details
  print('Book No 1:');
  String title1 = b1.title; //print title
  print('Title : $title1');
  String author1 = b1.author;
  print('Author : $author1'); //print author
  int pub1 = b1.publicationYear;
  print('Publication Year : $pub1'); //print publication year
  print('Pages Read : ${b1.pagesRead}');
  int age1 = b1.getBookAge();
  print('Age of first book is : $age1'); //print book age
  print(' ');

//print second book details
  print('Book No 2:');
  String title2 = b2.title;
  print('Title : $title2');

  ///print book title
  String author2 = b2.author;
  print('Author : $author2'); //print book author
  int pub2 = b2.publicationYear;
  print('Publication Year : $pub2'); //print publication year
  print('Pages Read :${b2.pagesRead}');
  int age2 = b2.getBookAge();
  print('Age of first book is : $age2'); //print age of book
  print(' ');

//print third book details
  print('Book No 3:');
  String title3 = b3.title; //print book title
  print('Title : $title3');
  String author3 = b3.author;
  print('Author : $author3'); //print book author
  int pub3 = b3.publicationYear;
  print('Publication Year : $pub3'); //print book publication Year
  print('Pages Read :${b3.pagesRead}');
  int age3 = b3.getBookAge();
  print('Age of first book is : $age3'); //print book age

  print(' ');
  int totalbook = Book.totalBook();    //print total number of books created
  print('The number of book in the library : $totalbook');  //hi
}
