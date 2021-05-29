

import 'package:mta_tangram_project/model/shape_model.dart';

class LevelModel {
  final List<ShapeModel> shapes;
  static int currentLevel = 0;
  int shapeOfCount;
  LevelModel(this.shapes, this.shapeOfCount);
}
