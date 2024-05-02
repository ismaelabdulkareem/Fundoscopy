class PartiesListApp2Model {
  final String partyName;
  final String partyId;
  final String image;

  PartiesListApp2Model({
    required this.partyName,
    required this.partyId,
    required this.image,
  });

  factory PartiesListApp2Model.fromJson(Map<String, dynamic> json) {
    return PartiesListApp2Model(
      partyName: json['pName'],
      partyId: json['pId'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pName': partyName,
      'pId': partyId,
      'pImage': image,
    };
  }
}
