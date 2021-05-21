import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project12/comment.dart';
import 'package:project12/components/rounded_card.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project12/utils/utils.dart';
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
                      light: true,
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
                      padding: 8,
                      light: true,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/thumbs-up-thin.svg',
                            color: Color(0xFF15243C),
                            height: 22,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/save-thin.svg',
                            color: Color(0xFF15243C),
                            height: 22,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/upload-share-thin.svg',
                            color: Color(0xFF15243C),
                            height: 22,
                          ),
                          onPressed: () {},
                        )
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
                    width: double.infinity,
                    height: 450,
                    child: Image(
                      image: AssetImage('assets/background_pic.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      blur: 5,
                      padding: EdgeInsets.zero,
                      borderRadius: BorderRadius.zero,
                      child: Container(
                        height: 80,
                        color: primarySwatch.shade50.withOpacity(0.6),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: BlurryContainer(
                      padding: EdgeInsets.zero,
                      blur: 15,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        color: Color.fromRGBO(219, 229, 242, 0.7),
                        padding: EdgeInsets.only(top: 45, left: 16, bottom: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                              "Задержка \nпсихоречевого \nразвития у ребенка",
                              textAlign: TextAlign.start,
                              style: headingTextSyle(context).copyWith(
                                fontSize: 27,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: BlurryContainer(
                  blur: 600,
                  padding: EdgeInsets.zero,
                  borderRadius: BorderRadius.zero,
                  child: Container(
                    color: primarySwatch.shade300.withOpacity(0.5),
                    padding: EdgeInsets.only(left: 16, right: 16, top: 12),
                    child: Row(
                      children: [
                        IconText(
                            icon:
                                SvgPicture.asset('assets/visibility-icon.svg'),
                            text: '54 615'),
                        IconText(
                            icon: SvgPicture.asset('assets/comment-thin.svg'),
                            text: '123'),
                        IconText(
                            icon: SvgPicture.asset('assets/clock.svg'),
                            text: '9 мин')
                      ],
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Theme.of(context).accentColor.withOpacity(0.5),
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
                color: Theme.of(context).accentColor.withOpacity(0.5),
                padding:
                    EdgeInsets.only(top: 40, left: 16, bottom: 20, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Автор публикации:',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(fontSize: 15, letterSpacing: 0)),
                          TextSpan(
                              text: ' Татьяна Андреева, педагог-психолог',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                      fontSize: 15,
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
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        'Задержка психоречевого развития у ребенка',
                        style: headingTextSyle(context)
                            .copyWith(fontSize: 20, height: 1.3),
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
            icon: SvgPicture.asset(
              'assets/thumb-icon.svg',
              color: Color(0xFF15243C),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/bookmark-save.svg',
              color: Color(0xFF15243C),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/upload-share.svg',
              color: Color(0xFF15243C),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/comment-icon.svg',
              color: Color(0xFF15243C),
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CommentPage())),
          )
        ],
      ),
    );
  }
}
