import 'package:flutter/material.dart';
import 'package:store_app/Screens/UpDateScreen.dart';
import 'package:store_app/models/prodect_model.dart';

class Card_view extends StatelessWidget {
  Card_view({
    required this.prodact,
    super.key,
  });
  ProdactModel prodact;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpDateProdacts.id);
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 0,
              offset: Offset(10, 10))
        ]),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        prodact.title.substring(0, 6),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              r'$' '${prodact.price.toString()}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ])
                    ]),
              ),
            ),
          ),
          Positioned(
              right: 32,
              top: -65,
              child: Image.network(
                prodact.image,
                height: 100,
                width: 100,
              )),
        ]),
      ),
    );
  }
}
