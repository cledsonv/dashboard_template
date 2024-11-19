import 'package:neuro_dashboard/features/book/domain/entities/book_entity.dart';

class BookMapper {
    BookEntity fromJson(Map<String, dynamic> json) {
    return BookEntity(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      description: json['description'],
      cover: json['cover'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      author: json['author'],
      reviewer: json['reviewer'],
      illustrator: json['illustrator'],
    );
  }

    Map<String, dynamic> toJson(BookEntity book) {
    return {
      'id': book.id,
      'userId': book.userId,
      'title': book.title,
      'description': book.description,
      'cover': book.cover,
      'createdAt': book.createdAt,
      'updatedAt': book.updatedAt,
      'author': book.author,
      'reviewer': book.reviewer,
      'illustrator': book.illustrator,
    };
  }
}
