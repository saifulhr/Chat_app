class SignupUserModel {
    String? uid;
    String? name;
    String? email;

    SignupUserModel({
        this.uid,
        this.name,
        this.email,
    });

    factory SignupUserModel.fromJson(Map<String, dynamic> json) => SignupUserModel(
        uid: json["uid"],
        name: json["name"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "email": email,
    };
}
