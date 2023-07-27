import 'package:flutter/material.dart';
import 'package:nikunj_project/fruite_app/media_query.dart';
import 'package:nikunj_project/fruite_app/model_class.dart';

class DetailPage extends StatelessWidget {
  final FruitsModel Detail;
  const DetailPage({super.key, required this.Detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Detail.name)),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: Media_Query.w * .4,
              height: Media_Query.h * .4,
              child: Image(image: AssetImage(Detail.image)),
            ),
            SizedBox(height: 20),
            Text(Detail.description,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
