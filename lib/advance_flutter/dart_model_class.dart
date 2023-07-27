class UserInfo {
  int Id;
  String Name;
  int Age;

  UserInfo({required this.Id, required this.Name, required this.Age});
}

void main() {
  List<Map> UserData = [
    {"Id": 1, "Name": "Nikunj", "Age": 22},
    {"Id": 2, "Name": "Sonal", "Age": 24},
    {"Id": 3, "Name": "Slamnan", "Age": 82},
    {"Id": 5, "Name": "Rockey", "Age": 14},
    {"Id": 9, "Name": "Shahrukh", "Age": 32},
    {"Id": 6, "Name": "Akhsay", "Age": 44},
  ];

  List<UserInfo> DataTransfer = [
    UserInfo(
        Id: UserData[0]["Id"],
        Name: UserData[0]["Name"],
        Age: UserData[0]["Age"]),
    UserInfo(
        Id: UserData[1]["Id"],
        Name: UserData[1]["Name"],
        Age: UserData[1]["Age"]),
    UserInfo(
        Id: UserData[2]["Id"],
        Name: UserData[2]["Name"],
        Age: UserData[2]["Age"]),
    UserInfo(
        Id: UserData[3]["Id"],
        Name: UserData[3]["Name"],
        Age: UserData[3]["Age"]),
    UserInfo(
        Id: UserData[4]["Id"],
        Name: UserData[4]["Name"],
        Age: UserData[4]["Age"]),
  ];

  print(DataTransfer[0].Name);
  print(DataTransfer[3].Age);
}
