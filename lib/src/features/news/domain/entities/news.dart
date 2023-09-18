import 'package:equatable/equatable.dart';

/// Represents news data, including its unique identifier, category, title,
/// content, release date, picture, and type.
class News extends Equatable {
  /// Constructs a new instance of [News].
  ///
  /// - [id]: The unique identifier for the news.
  /// - [categoryId]: The category identifier for the news (optional).
  /// - [category]: The name of the news category (optional).
  /// - [title]: The title of the news.
  /// - [content]: The content of the news.
  /// - [releaseDate]: The date when the news was released.
  /// - [picture]: The picture associated with the news.
  const News({
    required this.id,
    required this.title,
    required this.content,
    required this.releaseDate,
    required this.picture,
    required this.categoryId,
    this.category,
  });

  /// Represents the unique identifier of the news.
  final int id;

  /// Represents the category identifier of the news (optional).
  final String categoryId;

  /// Represents the name of the news category (optional).
  final String? category;

  /// Represents the title of the news.
  final String title;

  /// Represents the content of the news.
  final String content;

  /// Represents the release date of the news.
  final DateTime releaseDate;

  /// Represents the picture associated with the news.
  final String picture;

  @override
  List<Object?> get props {
    return [
      id,
      categoryId,
      category,
      title,
      content,
      releaseDate,
      picture,
    ];
  }
}