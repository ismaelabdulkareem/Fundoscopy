class CandListApp2_Model {
  final String candImg;
  final String candName;
  final String candNo;
  final String candPart;
  final String candEdu;
  final String candExp;
  final String candDisc;
  final int candVotes;

  CandListApp2_Model({
    required this.candImg,
    required this.candName,
    required this.candNo,
    required this.candPart,
    required this.candEdu,
    required this.candExp,
    required this.candDisc,
    required this.candVotes,
  });

  factory CandListApp2_Model.fromJson(Map<String, dynamic> json) {
    return CandListApp2_Model(
      candImg: json['cImg'],
      candName: json['cName'],
      candNo: json['cNo'],
      candPart: json['cPart'],
      candEdu: json['cEdu'],
      candExp: json['cExp'],
      candDisc: json['cDisc'],
      candVotes: 100,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cImg': candImg,
      'cName': candName,
      'cNo': candNo,
      'cPart': candPart,
      'cEdu': candEdu,
      'cExp': candExp,
      'cDisc': candDisc,
      'cVotes': candVotes,
    };
  }
}
