import 'dart:convert';

void main()
{

  Map<String,dynamic>  Userdata = {
    "Id" : 1234,
    "name" : "Nikunj",
    "Email" : "Nikunj@gmail.com"
  };

   var UserdataEncode = jsonEncode(Userdata);

   print(UserdataEncode);

}