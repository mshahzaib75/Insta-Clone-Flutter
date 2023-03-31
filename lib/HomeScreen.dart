import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ModelClass.dart';

class CloneTree extends StatelessWidget {
  const CloneTree({required this.modelClass, super.key});

  final ModelClass modelClass;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: height * 0.08,
          child: Row(
            children: [
              SizedBox(width: width * 0.03),
              CircleAvatar(
                radius: 15,
                child: Image.asset(modelClass.profilePhoto),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              SizedBox(
                width: width * 0.33,
                child: Text(
                  modelClass.profileName,
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.45,
              ),
              SizedBox(
                height: width * 0.2,
                child: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        SizedBox(child: Image.asset(modelClass.image)),
        SizedBox(
          height: height * 0.055,
          child: ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.000000000001,
              ),
              const Icon(
                Icons.favorite_outline,
                size: 27,
              ),
              SizedBox(
                width: width * 0.000000001,
              ),
              const Icon(
                Icons.chat_outlined,
                size: 27,
              ),
              SizedBox(
                width: width * 0.000000001,
              ),
              const Icon(
                Icons.send_outlined,
                size: 27,
              ),
              SizedBox(
                width: width * 0.5,
              ),
              const Icon(
                Icons.bookmark_outline,
                size: 27,
              ),
            ],
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.0000001,
            ),
            CircleAvatar(
              radius: 11,
              child: Image.asset(modelClass.personLikeImage),
            ),
            const Text(
              'Liked by',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              modelClass.likedPersonName,
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
            const Text(
              'and',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              modelClass.others,
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.0000001,
            ),
            CircleAvatar(
              radius: 14,
              child: Image.asset('assets/images/shahzaib.png'),
            ),
            SizedBox(
              width: width * 0.3,
              child: const Center(
                child: Text(
                  'Write a comment...',
                  style: TextStyle(
                      color: Color.fromARGB(255, 119, 118, 118),
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.04,
            ),
            SizedBox(
              height: height * 0.03,
              child: Text(
                modelClass.postingTime,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
