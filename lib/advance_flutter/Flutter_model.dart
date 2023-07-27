class UserModel {
  int? Id;
  String? UserName;
  String? userEmail;

  UserModel(
      {required this.Id, required this.UserName, required this.userEmail});

  UserModel.FromJson(Map<String, dynamic> json) {
    this.Id = json["Id"];
    this.UserName = json["UserName"];
    this.userEmail = json["Email"];
  }

  Map<String, dynamic> toJson() {
    return {"Id": this.Id, "name": this.UserName, "Email": this.userEmail};
  }
}
