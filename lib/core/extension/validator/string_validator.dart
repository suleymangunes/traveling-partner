extension StringValidator on String? {
  String? validateEmpty(String errorMessage) {
    if (this == null || this!.isEmpty) {
      return errorMessage;
    }
    return null;
  }
}
