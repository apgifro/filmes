import 'package:filmes/models/assets.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final double? scrollOffset;

  const Bar({Key? key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset! / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20.0, 0),
                    child: Icon(Icons.search, color: Colors.white,),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(Assets.profile)
                        )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
