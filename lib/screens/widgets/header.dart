import 'package:filmes/models/content.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Content featuredContent;

  const Header({Key? key, required this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Image Featured
        Container(
          height: 500.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(featuredContent.imageUrl),
                  fit: BoxFit.cover
              )
          ),
        ),

        // Shadow Effect
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )
          ),
        ),

        Container(
          height: 330.0,
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Séries',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Filmes',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: const [
                  Text(
                    'Categorias',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.expand_more, color: Colors.white,)
                ],
              )
            ],
          ),
        ),

        // Title Featured
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250,
            child: Image.asset(featuredContent.titleImageUrl!),
          ),
        ),

        Positioned(
          bottom: 90.0,
          child: Text(featuredContent.categories!, style: TextStyle(color: Colors.white),),
        ),

        // Action Buttons
        Positioned(
          left: 0, right: 0, bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(Icons.add, color: Colors.white),
                  SizedBox(height: 2.0),
                  Text(
                    'Minha lista',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                      FontWeight.w600
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
                child: SizedBox(
                  height: 43.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Assistir',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: const [
                  Icon(Icons.info_outline, color: Colors.white),
                  SizedBox(height: 2.0),
                  Text(
                    'Saiba mais',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                      FontWeight.w600
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],

    );
  }
}
