import 'package:filmes/models/data.dart';
import 'package:filmes/screens/widgets/bar.dart';
import 'package:filmes/screens/widgets/header.dart';
import 'package:filmes/screens/widgets/lists.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? _scrollOffset = 0.0;
  ScrollController? _scrollController;

  @override
  void initState() {
    featured.shuffle();
    popular.shuffle();
    only.shuffle();
    trending.shuffle();
    family.shuffle();
    released.shuffle();

    _scrollController = ScrollController()..addListener(() {
      setState(() {
        _scrollOffset = _scrollController?.offset;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: Bar(scrollOffset: _scrollOffset,),
      ),
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Header(featuredContent: featured[0])
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Lists(
                title: 'Populares',
                contentList: popular
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Lists(
              title: 'Só na Netflix',
              contentList: only
            ),
          ),
          SliverToBoxAdapter(
            child: Lists(
              title: 'Em alta',
              contentList: trending
            ),
          ),
          SliverToBoxAdapter(
            child: Lists(
              title: 'Programas para toda a família',
              contentList: family
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20.0),
            sliver: SliverToBoxAdapter(
              child: Lists(
                title: 'Lançamentos',
                contentList: released
              ),
            ),
          ),
        ],
      ),
    );
  }
}
