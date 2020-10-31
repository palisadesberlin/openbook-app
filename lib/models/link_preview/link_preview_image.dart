class LinkPreviewImage {
  final String url;
  final int width;
  final int height;

  LinkPreviewImage({
    this.url,
    this.width,
    this.height,
  });

  factory LinkPreviewImage.fromJson(Map<String, dynamic> parsedJson) {
    if (parsedJson == null) return null;

    return LinkPreviewImage(
      url: parsedJson['url'],
      width: parsedJson['width'],
      height: parsedJson['height'],
    );
  }
}
