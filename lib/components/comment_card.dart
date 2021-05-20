import 'package:flutter/material.dart';
import 'package:project12/utils/models.dart';
import 'package:project12/utils/utils.dart';

class CommentCard extends StatefulWidget {
  final Comment comment;
  CommentCard({this.comment});

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  List<Comment> replies = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: widget.comment.isReply ? 20 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // width: 200,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.comment.user.photoURL),
                  radius: 24,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.comment.user.name,
                  style: userNameStyle(context),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  timeFormatter(widget.comment.postedAt),
                  style: captionStyle(context).copyWith(fontSize: 14),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              widget.comment.content,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ответить',
                  style: userNameStyle(context).copyWith(fontSize: 17),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.thumb_up_rounded,
                            size: 23, color: Colors.black38),
                        SizedBox(
                          width: 13.5,
                        ),
                        Text(
                          widget.comment.likes > 0
                              ? widget.comment.likes.toString()
                              : '',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.green),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Row(
                      children: [
                        Icon(Icons.thumb_down_rounded,
                            size: 23, color: Colors.black38),
                        SizedBox(
                          width: 13.5,
                        ),
                        Text(
                          widget.comment.dislikes > 0
                              ? widget.comment.dislikes.toString()
                              : '',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.redAccent),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.black38,
                      ),
                      onTap: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          if (widget.comment.replies.isNotEmpty && replies.isEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Container(
                      width: 40,
                      child: Divider(
                        indent: 1,
                        color: Colors.grey[700],
                        endIndent: 2,
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          replies = widget.comment.replies;
                        });
                      },
                      child: Text(
                        'Показать ${widget.comment.replies.length} ответов',
                        style: TextStyle(color: Colors.grey[700], fontSize: 17),
                      )),
                ],
              ),
            ),
          if (replies.isNotEmpty) ...[
            SizedBox(
              height: 20,
            ),
            ...List.generate(replies.length,
                (index) => CommentCard(comment: replies[index])),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Container(
                      width: 40,
                      child: Divider(
                        indent: 1,
                        color: Colors.grey[700],
                        endIndent: 2,
                      )),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          replies = [];
                        });
                      },
                      child: Text(
                        'Скрыть ответы',
                        style: TextStyle(color: Colors.grey[700], fontSize: 17),
                      )),
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}
