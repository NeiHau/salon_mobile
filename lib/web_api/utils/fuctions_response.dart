class FunctionsResponse<T> {
  FunctionsResponse({
    this.data,
    this.error,
    this.errorCode,
    this.errorMessage,
  });

  T? data;
  Object? error;
  String? errorCode;
  String? errorMessage;
}
