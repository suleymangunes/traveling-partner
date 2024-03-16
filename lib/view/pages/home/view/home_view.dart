import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:traveling_partner/view/pages/home/model/location_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("this is Home page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchData();
        },
      ),
    );
  }

  Future<void> fetchData() async {
    var locations =
        await FirebaseFirestore.instance.collection("locations").get();

    var locationModels =
        locations.docs.map((e) => LocationModel.fromJson(e.data()));
    print(locationModels.first.city);
  }
}
