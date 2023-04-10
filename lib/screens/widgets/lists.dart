import 'package:filmes/models/content.dart';
import 'package:filmes/screens/detail.dart';
import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const Lists({Key? key, required this.title, required this.contentList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 220.0,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                scrollDirection: Axis.horizontal,
                itemCount: contentList.length,
                itemBuilder: (BuildContext context, int index) {
                  final Content content = contentList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detail(
                                contentDetail: content,
                              )));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: 200.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage(content.imageUrl),
                              fit: BoxFit.cover)),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
