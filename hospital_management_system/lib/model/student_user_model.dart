class StudentUserModel {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? idNumber;

  StudentUserModel({this.uid, this.email, this.firstName, this.lastName,this.idNumber});

  // receiving data from server
  factory StudentUserModel.fromMap(map) {
    return StudentUserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      idNumber: map['idNumber']
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'idNumber':idNumber,
    };
  }
}
