class Status {
  final String userId;
  final String content;
  final String? imageUrl;
  final DateTime timestamp;

  Status({
    required this.userId,
    required this.content,
    this.imageUrl,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'content': content,
      'imageUrl': imageUrl,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
