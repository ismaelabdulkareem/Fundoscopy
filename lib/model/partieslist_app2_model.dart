class PartiesListApp2Model {
  final String partyName;
  final String partyId;
  final String image;
  final int partyVotes;

  PartiesListApp2Model({
    required this.partyName,
    required this.partyId,
    required this.image,
    required this.partyVotes,
  });

  factory PartiesListApp2Model.fromJson(Map<String, dynamic> json) {
    return PartiesListApp2Model(
      partyName: json['pName'],
      partyId: json['pId'],
      image: json['pImage'],
      partyVotes: json['pVotes'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pName': partyName,
      'pId': partyId,
      'pImage': image,
      'pVotes': partyVotes,
    };
  }
}
