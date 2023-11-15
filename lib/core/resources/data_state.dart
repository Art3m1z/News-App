import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T ? data;
  final DioError ? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataError<T> extends DataState<T> {
  const DataError(DioError error) : super(error: error);
}


// "articles": [
// -{
// -"source": {
// "id": null,
// "name": "Kusports.com"
// },
// "author": null,
// "title": "Quick recap: Kansas rallies from double-digit deficit to survive Kentucky in Champions Classic - KUsports",
// "description": "Chicago — Kentucky was missing three seven-footers, two injured and one not yet eligible, in the paint, and that disparity was apparent from the opening minutes Tuesday night at the United Center, as Hunter Dickinson scored practically at will — at least, whe…",
// "url": "https://www2.kusports.com/sports/2023/nov/14/quick-recap-kansas-rallies-from-double-digit-deficit-to-survive-kentucky-in-champions-classic/",
// "urlToImage": "https://ogden_images.s3.amazonaws.com/www.kusports.com/images/2023/11/14214704/AP23319132802160-1200x800.jpeg",
// "publishedAt": "2023-11-15T05:12:14Z",
// "content": "Quick recap: Kansas rallies from double-digit deficit to survive Kentucky in Champions Classic\r\nKansas head coach Bill Self shouts from the sidelines during the first half of an NCAA college basketba… [+5352 chars]"
// },