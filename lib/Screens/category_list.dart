import 'package:flairr_final_project/models/category_details.dart';
import 'package:flutter/material.dart';
import 'package:flairr_final_project/Screens/category.dart';

class Professional {

  static List<Category> getMockedCategories(){
    return[
      Category(
        name: "Photographer",
        imgName: "photography_cover.png",
        icon: Icons.camera,
        subCategories: []
      ),
      Category(
          name: "Mehendi Designer",
          imgName: "hennaDesigner_cover.png",
          icon: Icons.camera,
          subCategories: []
      ),
      Category(
          name: "Baker",
          imgName: "baker_cover.png",
          icon: Icons.camera,
          subCategories: []
      ),
      Category(
          name: "Cosmetologist",
          imgName: "cosmetologist_cover.png",
          icon: Icons.camera,
          subCategories: []
      ),
      Category(
          name: "Florist",
          imgName: "florist_cover.png",
          icon: Icons.camera,
          subCategories: []
      ),
      Category(
          name: "Caterer",
          imgName: "caterer_cover.png",
          icon: Icons.camera,
          subCategories: []
      ),
    ];
  }
}
