import 'package:flutter/material.dart';
import 'package:flutter_auth/controllers/restaurantController.dart';
import 'package:get/get.dart';

class AllRestaurants extends StatelessWidget {
  RestaurantController restaurantController = Get.put(RestaurantController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        padding: EdgeInsets.all(10),
        child: restaurantController.filteredRestaurants.length <= 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: restaurantController.filteredRestaurants.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => Item(
                        //           item_id: filteredRestaurants[index]['id'],
                        //           item_title: filteredRestaurants[index]['name'],
                        //           item_image: filteredRestaurants[index]['logo'],
                        //           item_description: filteredRestaurants[index]
                        //               ['review'],
                        //         )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 165.00,
                        child: Card(
                            child: ListTile(
                                title: Text(restaurantController
                                    .filteredRestaurants[index].name),
                                subtitle: Text(restaurantController
                                    .filteredRestaurants[index].review),
                                leading: Container(
                                  color: Colors.red,
                                  width: 100,
                                  height: 100,
                                  child: Image.network(
                                      restaurantController
                                          .filteredRestaurants[index].logo,
                                      fit: BoxFit.fitHeight),
                                ))),
                      ));
                })));
  }
}
