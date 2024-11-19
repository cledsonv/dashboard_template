class BookEntity {
  final int id;
  final int userId;
  final String? cover;
  final String title;
  final String description;
  final String author;
  final String illustrator;
  final String reviewer;
  final String createdAt;
  final String updatedAt;

  BookEntity({
    required this.id,
    required this.userId,
    this.cover,
    required this.title,
    required this.description,
    required this.author,
    required this.illustrator,
    required this.reviewer,
    required this.createdAt,
    required this.updatedAt,
  });
}
