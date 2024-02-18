import 'package:tdd_flutter/features/home/domain/entities/HomeEntityModel.dart';

class HomeModel extends Chapterten {
  HomeModel({
    required super.id,
    required super.imageUrl,
    required super.audioUrl,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      audioUrl: json['audioUrl'],
    );
  }
}
