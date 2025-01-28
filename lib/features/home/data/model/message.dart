
enum MessageType { text, image, file }

class Message {
  final String senderID;
  final String content;
  final DateTime sendAt;
  final MessageType messageType;
  final String? fileUrl;    
  final bool isSeen; 

  Message({
    required this.senderID,
    required this.messageType,
    required this.sendAt,
    required this.content,
    this.fileUrl,
    this.isSeen = false, 
  });

  Map<String, dynamic> toJson() {
    return {
      'senderID': senderID,
      'content': content,
      'sendAt': sendAt.toIso8601String(),
      'messageType': messageType.index,
      'fileUrl': fileUrl,
      'isSeen': isSeen,     
    };
  }

  static Message fromJson(Map<String, dynamic> json) {
    return Message(
      senderID: json['senderID'],
      content: json['content'],
      sendAt: DateTime.parse(json['sendAt']),
      messageType: MessageType.values[json['messageType']],
      fileUrl: json['fileUrl'],
      isSeen: json['isSeen'] ?? false, 
    );
  }
}
