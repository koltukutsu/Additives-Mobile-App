class GroupRequest {
  GroupRequest(
      {required this.currentUserId,
      required this.creatorUserId,
      required this.groupId});

  final String groupId;
  final String currentUserId;
  final String creatorUserId;
}
