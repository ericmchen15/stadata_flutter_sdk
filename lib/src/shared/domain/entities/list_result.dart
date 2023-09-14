import 'package:equatable/equatable.dart';
import 'package:stadata_flutter_sdk/src/shared/domain/entities/pagination.dart';

/// Represents a result containing a list of data items of type [T] along with
/// optional pagination information.
///
/// The [ListResult] class is used to encapsulate a list of data items, such as
/// items fetched from an API,
/// along with optional pagination details when applicable.
///
/// - [data]: A list of data items of type [T].
/// - [pagination]: Optional pagination information, typically used to navigate
/// through a large dataset.
class ListResult<T> extends Equatable {
  /// Creates a [ListResult] with the specified data items and optional
  /// pagination information.
  ///
  /// - [data]: A list of data items of type [T].
  /// - [pagination]: Optional pagination information, typically used to
  /// navigate through a large dataset.
  const ListResult({
    required this.data,
    this.pagination,
  });

  /// The list of data items of type [T].
  final List<T> data;

  /// Optional pagination information, typically used to navigate through
  ///  a large dataset.
  final Pagination? pagination;

  @override
  List<Object?> get props => [
        data,
        pagination,
      ];
}
