class EdDicomModel {
  final List<int> decodedBytes;
  final String patientName;
  final String patientSex;
  final String patientID;
  final String patientAge;
  final String patientBirthDate;
  final String patientWeight;
  final String patientHeight;

  EdDicomModel({
    required this.decodedBytes,
    required this.patientName,
    required this.patientSex,
    required this.patientID,
    required this.patientAge,
    required this.patientBirthDate,
    required this.patientWeight,
    required this.patientHeight,
  });

  factory EdDicomModel.fromJson(Map<String, dynamic> json) {
    return EdDicomModel(
      decodedBytes: json['decodedBytes'].cast<int>(),
      patientName: json['patientName'],
      patientSex: json['patientSex'],
      patientID: json['patientID'],
      patientAge: json['patientAge'],
      patientBirthDate: json['patientBirthDate'],
      patientWeight: json['patientWeight'],
      patientHeight: json['patientHeight'],
    );
  }

  @override
  String toString() {
    return 'EdDicomModel{patientName: $patientName, patientSex: $patientSex, patientID: $patientID, patientAge: $patientAge, patientBirthDate: $patientBirthDate, patientWeight: $patientWeight, patientHeight: $patientHeight}';
  }
}