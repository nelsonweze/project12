import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project12/components/comment_card.dart';
import 'package:project12/utils/utils.dart';
import 'utils/models.dart';

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Comment> comments = [
      Comment(
        user: AvartarUser(photoURL: 'assets/user1.png', name: 'Алёна'),
        content:
            'Если вы видите, что в целом у ребенка все хорошо, он понимает речь, адекватно реагирует на окружающую действительность, то, скорее всего, нет причин для 😍 беспокойства.',
        dislikes: 9,
        likes: 256,
        postedAt:
            DateTime(2021, 5, DateTime.now().day, DateTime.now().hour - 3),
      ),
      Comment(
          user: AvartarUser(
              photoURL: 'assets/user3.png', name: 'Максим Лаврентьев'),
          content:
              'Диагноз ли это, поставленный специалистами, или догадка-опасение родителей, давайте разбираться, что это такое и откуда берется.       При этом нужно понимать, что каждый ребенок... Развернуть',
          postedAt: DateTime(
              2021, 5, DateTime.now().day - 21, DateTime.now().hour - 3),
          replies: [
            Comment(
                user: AvartarUser(photoURL: 'assets/user4.png', name: 'Олег'),
                content:
                    'Владимир, диагноз ли это, поставленный специалистами, или догадка-опасение родителей, давайте разбираться, что это такое и откуда берется. При этом нужно понимать, что каждый ребенок может ',
                replyTo: 'reply',
                postedAt: DateTime(
                    2021, 5, DateTime.now().day - 21, DateTime.now().hour - 3)),
            Comment(
                user: AvartarUser(photoURL: 'assets/user5.png', name: 'Мария'),
                content:
                    'Диагноз ли это, поставленный специалистами, или догадка-опасение родителей, давайте разбираться, что это такое и откуда берется. При этом нужно понимать, что каждый ребенок может ',
                replyTo: 'reply',
                postedAt: DateTime(
                    2021, 5, DateTime.now().day, DateTime.now().hour - 3))
          ]),
    ];
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFEBEFF7),
      child: Container(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              backgroundColor: Color(0xFFEBEFF7),
              largeTitle: Row(children: [
                Text('Комментарии',
                    style: headingTextSyle(context).copyWith(fontSize: 24)),
                SizedBox(
                  width: 4,
                ),
                Text('28',
                    style: headingTextSyle(context)
                        .copyWith(color: Colors.grey, fontSize: 20))
              ]),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 8.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Text(
                        'По пулярности',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Icon(Icons.expand_more_outlined)
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 14, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/user6.png'),
                              ),
                              Expanded(
                                  child: Container(
                                      height: 56,
                                      padding: EdgeInsets.only(left: 12),
                                      child: CupertinoTextField(
                                        padding: EdgeInsets.only(left: 20),
                                        placeholder: 'Написать комментарий',
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.white),
                                        placeholderStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color:
                                                CupertinoColors.placeholderText,
                                            decoration: TextDecoration.none),
                                      )))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: ['😍', '😧', '😏', '😳', '🤗', '🤗']
                                .map((e) => GestureDetector(
                                      child: Text(
                                        e,
                                        style: TextStyle(
                                            fontSize: 28,
                                            decoration: TextDecoration.none),
                                      ),
                                      onTap: () {
                                        print(e);
                                      },
                                    ))
                                .toList(),
                          ),
                        )
                      ],
                    ),
                    ...List.generate(
                        comments.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: CommentCard(
                                comment: comments[index],
                              ),
                            )),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(12)),
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text(
                          'Показать все комментарии (23)',
                          style:
                              headingTextSyle(context).copyWith(fontSize: 15),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
