// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  final int? id;
  final String? title;
  final String? content;
  final String? createdAt;
  final String? createdBy;
  final String? updatedAt;
  final String? updatedBy;
  final String? img;
  final int? likes;
  final int? shares;

  ArticleModel({
    required this.id,
    required this.title,
    required this.content,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.img,
    this.likes,
    this.shares,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
