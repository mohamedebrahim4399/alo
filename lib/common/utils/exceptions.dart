class ApiRequestException implements Exception {
  ApiRequestException(this.statusCode, this.errorMessage);

  final int statusCode;
  final String errorMessage;
}

class ServerError implements Exception {
  ServerError(this.errorMessage);

  final String errorMessage;
}
