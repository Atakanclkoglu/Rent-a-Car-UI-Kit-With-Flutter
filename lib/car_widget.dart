import 'package:car_rental_app/constant.dart';
import 'package:car_rental_app/data.dart';
import 'package:flutter/material.dart';

Widget buildCar(Car car, int? index) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: const EdgeInsets.all(16),
    margin: EdgeInsets.only(
        //önemli
        // ignore: unnecessary_null_comparison
        right: index != null ? 16 : 0,
        left: index == 0 ? 16 : 0),
    width: 220,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                car.condition,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 120,
          child: Center(
            child: Hero(
              tag: car.model,
              child: Image.asset(
                car.images[0],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          car.model,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          car.brand,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Text(
          "per ${car.condition == "Daily" ? "day" : car.condition == "Weekly" ? "week" : "month"}",
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    ),
  );
}
