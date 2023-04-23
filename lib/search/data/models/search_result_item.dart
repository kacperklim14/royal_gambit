class SearchResultItem {
  String? area;
  Extras? extras;
  int? id;
  String? name;
  int? eventStart;
  int? score;

  SearchResultItem(
      {this.area,
      this.extras,
      this.id,
      this.name,
      this.eventStart,
      this.score});

  SearchResultItem.fromJson(Map<String, dynamic> json) {
    area = json['area'];
    extras = json['extras'] != null ? Extras.fromJson(json['extras']) : null;
    id = json['id'];
    name = json['name'];
    eventStart = json['eventStart'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['area'] = area;
    if (extras != null) {
      data['extras'] = extras!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['eventStart'] = eventStart;
    data['score'] = score;
    return data;
  }
}

class Extras {
  int? cATEGORYID3;
  int? cATEGORYID2;
  int? sPORTID;
  String? cATEGORYNAME1;
  int? cATEGORYID1;
  String? cATEGORYNAME2;
  String? cATEGORYNAME3;

  Extras(
      {this.cATEGORYID3,
      this.cATEGORYID2,
      this.sPORTID,
      this.cATEGORYNAME1,
      this.cATEGORYID1,
      this.cATEGORYNAME2,
      this.cATEGORYNAME3});

  Extras.fromJson(Map<String, dynamic> json) {
    cATEGORYID3 = json['CATEGORY_ID_3'];
    cATEGORYID2 = json['CATEGORY_ID_2'];
    sPORTID = json['SPORT_ID'];
    cATEGORYNAME1 = json['CATEGORY_NAME_1'];
    cATEGORYID1 = json['CATEGORY_ID_1'];
    cATEGORYNAME2 = json['CATEGORY_NAME_2'];
    cATEGORYNAME3 = json['CATEGORY_NAME_3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['CATEGORY_ID_3'] = cATEGORYID3;
    data['CATEGORY_ID_2'] = cATEGORYID2;
    data['SPORT_ID'] = sPORTID;
    data['CATEGORY_NAME_1'] = cATEGORYNAME1;
    data['CATEGORY_ID_1'] = cATEGORYID1;
    data['CATEGORY_NAME_2'] = cATEGORYNAME2;
    data['CATEGORY_NAME_3'] = cATEGORYNAME3;
    return data;
  }
}
