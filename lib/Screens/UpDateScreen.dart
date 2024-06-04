import 'package:flutter/material.dart';
import 'package:store_app/widget/CustomButtom.dart';
import 'package:store_app/widget/CustomTextFiled.dart';

class UpDateProdacts extends StatelessWidget {
  UpDateProdacts({super.key});
  static String id = 'Up Date Prodact';
  String? prodactName, desc, image;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Up date',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextFiled(
                  onChange: (data) {
                    prodactName = data;
                  },
                  hintTextFiled: 'Prodact title'),
              SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                  onChange: (data) {
                    price = int.parse(data);
                  },
                  hintTextFiled: 'Prodact price'),
              SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                  onChange: (data) {
                    desc = data;
                  },
                  hintTextFiled: 'Prodact Describtion'),
              SizedBox(
                height: 10,
              ),
              CustomTextFiled(
                  onChange: (data) {
                    image = data;
                  },
                  hintTextFiled: 'Prodact image'),
              SizedBox(
                height: 80,
              ),
              CustomSubmitcontainer(sumbitText: 'upDate')
            ],
          ),
        ),
      ),
    );
  }
}
