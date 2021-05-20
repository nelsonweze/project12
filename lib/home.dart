import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project12/comment.dart';
import 'package:project12/components/rounded_card.dart';
import 'components/components.dart';
import 'utils/styles.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SizedBox(
                height: 12,
              ),
            ),
            SliverAppBar(
              titleSpacing: 0.0,
              backgroundColor: Colors.transparent,
              pinned: true,
              shadowColor: Colors.transparent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: RoundedCard(
                      height: 46,
                      width: 46,
                      radius: 16,
                      padding: 14,
                      children: [
                        Icon(Icons.arrow_back_ios_rounded,
                            color: Colors.black, size: 16)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: RoundedCard(
                      height: 46,
                      width: 176,
                      padding: 10,
                      children: [
                        Icon(Icons.thumb_up_outlined,
                            size: 28, color: Colors.black),
                        Icon(Icons.bookmark_border_rounded,
                            size: 28, color: Colors.black),
                        Icon(Icons.upload_outlined,
                            size: 28, color: Colors.black),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/background_pic.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0, tileMode: TileMode.mirror),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Color.fromRGBO(219, 229, 242, 0.6),
                          padding: EdgeInsets.only(top: 45, left: 16),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text('''Задержка 
                                   психоречевого 
                                   развития у ребенка''',
                                textAlign: TextAlign.left,
                                style: headingTextSyle(context)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Theme.of(context).accentColor.withOpacity(0.4),
                width: MediaQuery.of(context).size.width * 0.6,
                padding: EdgeInsets.only(left: 16, right: 16, top: 12),
                child: Row(
                  children: [
                    IconText(icon: Icons.visibility_outlined, text: '54 615'),
                    IconText(icon: Icons.comment_bank_outlined, text: '123'),
                    IconText(icon: Icons.schedule_outlined, text: '9 мин')
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Theme.of(context).accentColor.withOpacity(0.4),
                padding: EdgeInsets.only(top: 12, left: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 90,
                      child: Stack(
                        children: [
                          Image(image: AssetImage('assets/user1.png')),
                          Positioned(
                              top: 0,
                              left: 20,
                              child:
                                  Image(image: AssetImage('assets/user2.png'))),
                          Positioned(
                              top: 0,
                              left: 40,
                              child:
                                  Image(image: AssetImage('assets/user3.png')))
                        ],
                      ),
                    ),
                    Center(
                      child: Text('826 нравится'),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Theme.of(context).accentColor.withOpacity(0.4),
                padding:
                    EdgeInsets.only(top: 60, left: 16, bottom: 20, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Автор публикации:',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: ' Татьяна Андреева, педагог-психолог',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ]),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                          'Диагноз ли это, поставленный специалистами, или догадка-опасение родителей, давайте разбираться, что это такое и откуда берется. При этом нужно понимать, что каждый ребенок индивидуален и в нормы укладываться не обязан. Родителям следует оценить — у их малыша просто свой личный план развития и придет время, он догонит своих сверстников или действительно пора целенаправленно заниматься вопросом развития речи с помощью специалистов...'),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        'Задержка психоречевого развития у ребенка',
                        style: headingTextSyle(context)
                            .copyWith(fontSize: 20, height: 1.2),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                          'Обычно, говоря о задержке в развитии речи у ребенка, специалисты ориентируются на возрастные нормы.'),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                          'При этом нужно понимать, что каждый ребенок индивидуален и в нормы укладываться не обязан. Родителям следует оценить — у их малыша просто свой личный план развития и придет время, он догонит своих сверстников или действительно пора целенаправленно заниматься вопросом развития речи с помощью специалистов.'),
                    ),
                    Container(
                      child: Text(
                          'Если вы видите, что в целом у ребенка все хорошо, он понимает речь, адекватно реагирует на окружающую действительность, то, скорее всего, нет причин для беспокойства.'),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/text_img2.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image(
                      image: AssetImage('assets/text_img3.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RoundedCard(
        height: 68,
        width: 304,
        children: [
          IconButton(
            icon: Icon(
              Icons.thumb_up_outlined,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.bookmark_border_rounded,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.upload_outlined,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.comment_outlined,
              size: 28,
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CommentPage())),
          )
        ],
      ),
    );
  }
}
