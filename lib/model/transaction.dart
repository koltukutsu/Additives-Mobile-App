class TransactionUser {
  TransactionUser({
    required this.id,
    required this.groupId,
    required this.userId,
    required this.amount,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int groupId;
  final int userId;
  final double amount;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory TransactionUser.fromJson(Map<String, dynamic> json) => TransactionUser(
    id: json["id"],
    groupId: json["group_id"],
    userId: json["user_id"],
    amount: json["amount"].toDouble(),
    description: json["description"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "group_id": groupId,
    "user_id": userId,
    "amount": amount,
    "description": description,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}