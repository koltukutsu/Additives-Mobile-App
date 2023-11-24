class Group {
  Group(
      {required this.id,
      required this.name,
      required this.description,
      required this.members,
      // required this.transactions
      });

  final String id;
  final String name;
  final String description;
  final List<String> members;
  // final List<String> transactions;
  //
  // factory Group.fromJson(Map<String, dynamic> json) {
  //   return Group(
  //     id: json['id'],
  //     name: json['name'],
  //     description: json['description'],
  //     members: json['members'],
  //     transactions: json['transactions'],
  //   );
  // }
  //
  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'name': name,
  //       'description': description,
  //       'members': members,
  //       'transactions': transactions,
  //     };
}
