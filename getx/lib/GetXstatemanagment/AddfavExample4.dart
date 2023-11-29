import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetXstatemanagment/GetXcontroler.dart';
import 'package:getx/GetxHeigh&Width.dart';
import 'package:getx/GetXstatemanagment/AddfavExample4.dart';
import 'package:getx/Home.dart';
import 'package:getx/GetXstatemanagment/Example2.dart';
import 'package:getx/GetXstatemanagment/FirestExample.dart';
import 'package:getx/GetXstatemanagment/ThirdExample.dart';

class AddFavExample extends StatefulWidget {
  const AddFavExample({super.key});

  @override
  State<AddFavExample> createState() => _AddFavExampleState();
}

ForthExampleAddFavorite favorite = Get.put(ForthExampleAddFavorite());

class _AddFavExampleState extends State<AddFavExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: favorite.Favorate.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                    onTap: () {
                      if (favorite.TempList.contains(favorite.AddFavoriteButton(
                          favorite.Favorate[index].toString()))) {
                        favorite.RemoveFavoriteButton(
                            favorite.Favorate[index].toString());
                      } else {
                        favorite.TempList.add(favorite.Favorate.toString());
                      }
                    },
                    title: Text(
                      favorite.Favorate[index].toString(),
                      style: TextStyle(),
                    ),
                    trailing: Obx(() => Icon(
                          favorite.TempList.contains(
                                  favorite.Favorate[index].toString())
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.pinkAccent,
                        )),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
