// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class ModelClass {
  String profilePhoto;
  String profileName;
  String image;
  String personLikeImage;
  String likedPersonName;
  String others;
  String postingTime;

  ModelClass({
    required this.profilePhoto,
    required this.profileName,
    required this.image,
    required this.personLikeImage,
    required this.likedPersonName,
    required this.others,
    required this.postingTime,
  });

  ModelClass copyWith({
    String? profilePhoto,
    String? profileName,
    String? image,
    String? personLikeImage,
    String? likedPersonName,
    String? others,
    String? postingTime,
  }) {
    return ModelClass(
      profilePhoto: profilePhoto ?? this.profilePhoto,
      profileName: profileName ?? this.profileName,
      image: image ?? this.image,
      personLikeImage: personLikeImage ?? this.personLikeImage,
      likedPersonName: likedPersonName ?? this.likedPersonName,
      others: others ?? this.others,
      postingTime: postingTime ?? this.postingTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profilePhoto': profilePhoto,
      'profileName': profileName,
      'image': image,
      'personLikeImage': personLikeImage,
      'likedPersonName': likedPersonName,
      'others': others,
      'postingTime': postingTime,
    };
  }

  factory ModelClass.fromMap(Map<String, dynamic> map) {
    return ModelClass(
      profilePhoto: map['profilePhoto'] as String,
      profileName: map['profileName'] as String,
      image: map['image'] as String,
      personLikeImage: map['personLikeImage'] as String,
      likedPersonName: map['likedPersonName'] as String,
      others: map['others'] as String,
      postingTime: map['postingTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelClass.fromJson(String source) =>
      ModelClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelClass(profilePhoto: $profilePhoto, profileName: $profileName, image: $image, personLikeImage: $personLikeImage, likedPersonName: $likedPersonName, others: $others, postingTime: $postingTime)';
  }

  @override
  bool operator ==(covariant ModelClass other) {
    if (identical(this, other)) return true;

    return other.profilePhoto == profilePhoto &&
        other.profileName == profileName &&
        other.image == image &&
        other.personLikeImage == personLikeImage &&
        other.likedPersonName == likedPersonName &&
        other.others == others &&
        other.postingTime == postingTime;
  }

  @override
  int get hashCode {
    return profilePhoto.hashCode ^
        profileName.hashCode ^
        image.hashCode ^
        personLikeImage.hashCode ^
        likedPersonName.hashCode ^
        others.hashCode ^
        postingTime.hashCode;
  }
}
