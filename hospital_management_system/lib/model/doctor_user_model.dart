class DoctorUserModel {
  String? did;
  String? email;
  String? firstName;
  String? lastName;

  DoctorUserModel({this.did, this.email, this.firstName, this.lastName});

  // receiving data from server
  factory DoctorUserModel.fromMap(map) {
    return DoctorUserModel(
      did: map['did'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'did': did,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
