import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu_item extends StatefulWidget {
  final String item_name;
  final int item_price;
  final String item_image;

  const menu_item(
      {super.key,
      required this.item_name,
      required this.item_price,
      required this.item_image});

  @override
  State<menu_item> createState() => _menu_itemState();
}

class _menu_itemState extends State<menu_item> {
  int item = 0;

  Widget count_button() {
    return Container(
        alignment: Alignment.center,
        height: 45,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else
                      item = 0;
                  });
                },
                icon: Icon(Icons.remove, color: Colors.green[500], size: 23)),
            Text('$item',
                style: TextStyle(color: Colors.green[500], fontSize: 23)),
            IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add, color: Colors.green[500], size: 23))
          ],
        ));
  }

  Widget add_button() {
    return InkWell(
      onTap: () {
        setState(() {
          item++;
        });
      },
      child: Container(
          alignment: Alignment.center,
          height: 45,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Text('ADD',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Colors.green[600]))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 190,
          width: MediaQuery.of(context).size.width * .45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.item_name,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
              Text(
                'Rs.${widget.item_price}',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Container(
          height: 190,
          width: MediaQuery.of(context).size.width * .45,
          child: Stack(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.item_image),
                        fit: BoxFit.cover),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Positioned(
                bottom: 7,
                right: 20,
                child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(10),
                    child: item == 0 ? add_button() : count_button()),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
