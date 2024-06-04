import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:store_app/servises/get_all_prodactservice.dart';
import 'package:store_app/widget/CustomCardView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeBage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Store App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
          child: FutureBuilder<List<ProdactModel>>(
            future: GetAllProdactsServase().GetAllProdact(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProdactModel> prodacts = snapshot.data!;
                return GridView.builder(
                    itemCount: prodacts.length,
                    clipBehavior: Clip.none,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 80,
                    ),
                    itemBuilder: (context, index) {
                      return Card_view(
                        prodact: prodacts[index],
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
