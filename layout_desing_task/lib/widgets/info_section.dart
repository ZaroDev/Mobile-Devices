import 'package:flutter/material.dart';
import 'package:layout_desing_task/widgets/cart_button.dart';
import 'package:layout_desing_task/widgets/price_info.dart';
import 'package:layout_desing_task/widgets/product_info.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProductInfo(name: "Double burger", time: "5-15 min"),
            Text("Double beef",
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.start),
            SizedBox(height: 16),
            PriceInfo(price: "\$7.00", rating: "2.5 k"),
            SizedBox(height: 16),
            Text("Description",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text(
              "Aliqua ad cillum esse voluptate culpa cupidatat."
              "Proident sit fugiat occaecat cillum dolor."
              "Nisi culpa elit in quis aliquip sit."
              "Culpa veniam fugiat culpa dolor cillum ipsum minim aliquip aliquip aliqua eu."
              "Proident anim culpa do est culpa exercitation sunt proident.",
              style: TextStyle(height: 1.4, color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 36),
            CartButton()
          ],
        ),
      ),
    );
  }
}
