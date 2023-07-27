// Write a code to display alert dialog with list of cities and Single choice selection
// display selected city in TextView

import 'package:flutter/material.dart';

void main() => runApp(MyApp())

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: city(),
    );
  }
}

class city extends StatefulWidget {
  const city({super.key});

  @override
  State<city> createState() => _cityState();
}

class _cityState extends State<city> {
  @override
  Widget build(BuildContext context) {
    String? city = '';
    String dropdownValue = 'Surat';

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              city,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 35),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Center(
                            child: Text(
                          'Please Select City',
                          style: TextStyle(fontSize: 30),
                        )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        actions: [
                          Container(
                            child: DropdownButton(
                              value: dropdownValue,
                              items: [
                                DropdownMenuItem(
                                  value: 'Surat',
                                  child: Text('Surat',
                                      style: TextStyle(fontSize: 18)),
                                  onTap: () => Navigator.pop(context),
                                ),
                                DropdownMenuItem(
                                  value: 'Ahmedabad',
                                  child: Text('Ahmedabad',
                                      style: TextStyle(fontSize: 18)),
                                  onTap: () => Navigator.pop(context),
                                ),
                                DropdownMenuItem(
                                  value: 'Rajkot',
                                  child: Text('Rajkot',
                                      style: TextStyle(fontSize: 18)),
                                  onTap: () => Navigator.pop(context),
                                ),
                                DropdownMenuItem(
                                  value: 'Vadodara',
                                  child: Text('Vadodara',
                                      style: TextStyle(fontSize: 18)),
                                  onTap: () => Navigator.pop(context),
                                ),
                                DropdownMenuItem(
                                  value: 'Valsad',
                                  child: Text('Valsad',
                                      style: TextStyle(fontSize: 18)),
                                  onTap: () => Navigator.pop(context),
                                ),
                              ],
                              onChanged: (value) {
                                print(city);
                                setState(() {
                                  city = value;
                                });
                              },
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Text('Cleck Here', style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
