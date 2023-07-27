import 'dart:convert';

void main()
{

  String Userdata = '{"name":"Nikunj","Email":"nikunj@gmail.com","id":2345}';

  var userdatadecode = jsonDecode(Userdata);

  print(userdatadecode);
}