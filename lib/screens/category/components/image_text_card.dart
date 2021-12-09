import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {
  final GridCategoryMenu item;

  ImageTextCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  item.title,
                  style: TextStyle(fontSize: 13.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
