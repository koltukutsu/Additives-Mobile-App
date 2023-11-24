class FMCMessage {
  final MessagingNotification notification;
  List<String> tokens;
  final MessagingData data;

  FMCMessage(this.notification, this.tokens, this.data);

// generate to json string
  Map<String, dynamic> toJson() => {
        "notification": notification.toJson(),
        "tokens": tokens,
        "data": data.toJson(),
      };
}

class MessagingNotification {
  final String title;
  final String body;

  MessagingNotification({required this.title, required this.body});

  // generate to json string
  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
      };
}

class MessagingData {
  final String route;
  final String creatorUserId;
  final String createdGroupId;

  MessagingData(
      {required this.route,
      required this.creatorUserId,
      required this.createdGroupId});

  // generate to json string
  Map<String, dynamic> toJson() => {
        "screen": route,
        "creatorUserId": creatorUserId,
        "createdGroupId": createdGroupId,
      };
}
