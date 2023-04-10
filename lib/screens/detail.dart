import 'package:filmes/models/assets.dart';
import 'package:filmes/models/content.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Content contentDetail;

  const Detail({Key? key, required this.contentDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Poster
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(contentDetail.previewUrl),
                      fit: BoxFit.cover
                  )
              ),
            ),

            // Netflix Content
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                  image: AssetImage(Assets.netflixLogo)
                              )
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(5.0, 2.0, 0.0, 0.0),
                          child: Text('S É R I E', style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  ),

                  // Title
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      contentDetail.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  // Info
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: Row(
                      children: [
                        // Year
                        Text(
                          contentDetail.year.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(Assets.fourteen))),
                          ),
                        ),
                        Text(
                          '${contentDetail.seasons} temporadas',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
                        ),
                        // Resolution
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.four_k,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),

                  // Buttons
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(50)),
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
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          minimumSize: const Size.fromHeight(50)),
                      icon: const Icon(
                        Icons.download,
                        size: 30,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Baixar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  // Description
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      contentDetail.description!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),

                  // Cast
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: RichText(
                      text: TextSpan(
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Estrelando: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400
                              )
                            ),
                            TextSpan(
                              text: contentDetail.cast,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300
                              )
                            )
                          ]
                      ),
                    ),
                  ),

                  // Created by
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                    child: RichText(
                      text: TextSpan(
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Criação: ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400
                                )
                            ),
                            TextSpan(
                                text: contentDetail.created_by,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300
                                )
                            )
                          ]
                      ),
                    ),
                  ),

                  // Buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.add, color: Colors.white),
                            SizedBox(height: 15.0),
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
                        Column(
                          children: const [
                            Icon(Icons.thumb_up, color: Colors.white),
                            SizedBox(height: 15.0),
                            Text(
                              'Avaliado',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight:
                                  FontWeight.w600
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.share, color: Colors.white),
                            SizedBox(height: 15.0),
                            Text(
                              'Compartilhe',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight:
                                  FontWeight.w600
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.file_download_outlined, color: Colors.white),
                            SizedBox(height: 15.0),
                            Text(
                              'Baixar',
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
