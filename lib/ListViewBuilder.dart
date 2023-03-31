import 'package:flutter/material.dart';
import 'package:insta_clone_flutter/HomeScreen.dart';

import 'ModelClass.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<ModelClass> model = [
    ModelClass(
        profilePhoto: 'assets/images/amir.png',
        profileName: 'muhammad_amir',
        image: 'assets/images/_amir.jpg',
        personLikeImage: 'assets/images/asher.png',
        likedPersonName: 'asher_hussain',
        others: '4 others',
        postingTime: '2 days ago'),
    ModelClass(
        profilePhoto: 'assets/images/asher.png',
        profileName: 'asher_hussain',
        image: 'assets/images/_asher.jpg',
        personLikeImage: 'assets/images/asim.png',
        likedPersonName: 'asim_farooq',
        others: '2 others',
        postingTime: '4 days ago'),
    ModelClass(
        profilePhoto: 'assets/images/asim.png',
        profileName: 'asim_farooq',
        image: 'assets/images/_asim.jpg',
        personLikeImage: 'assets/images/awais.png',
        likedPersonName: 'muhammad_awais',
        others: '5 others',
        postingTime: '3 days ago'),
    ModelClass(
        profilePhoto: 'assets/images/awais.png',
        profileName: 'muhammad_awais',
        image: 'assets/images/_awais.jpg',
        personLikeImage: 'assets/images/huzaifa.png',
        likedPersonName: 'huzaifa_saleem',
        others: '2 others',
        postingTime: '6 days ago'),
    ModelClass(
        profilePhoto: 'assets/images/shahid.png',
        profileName: 'shahid_maqbool',
        image: 'assets/images/_shahid.jpg',
        personLikeImage: 'assets/images/shafiq.png',
        likedPersonName: 'shafiq_hussain',
        others: '6 others',
        postingTime: '4 days ago'),
    ModelClass(
        profilePhoto: 'assets/images/shahzaib.png',
        profileName: 'shahzaib',
        image: 'assets/images/_shahzaib.jpg',
        personLikeImage: 'assets/images/zain.png',
        likedPersonName: 'zain_ul_abideen',
        others: '4 others',
        postingTime: '2 days ago'),
    ModelClass(
        profilePhoto: 'assets/images/zain.png',
        profileName: 'zain_ul_abideen',
        image: 'assets/images/_zain.jpg',
        personLikeImage: 'assets/images/huzaifa.png',
        likedPersonName: 'huzaifa_saleem',
        others: '3 others',
        postingTime: '5 days ago')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, index) => CloneTree(modelClass: model[index]),
      ),
    );
  }
}
