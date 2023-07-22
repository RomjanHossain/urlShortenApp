import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/presentation/pages/history/components/history_card_link_comp.dart';

class HistoryCardListTile extends StatelessWidget {
  const HistoryCardListTile({
    required this.shortUrlModel,
    super.key,
  });

  final ShortUrlContainerDBModel shortUrlModel;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(
          shortUrlModel.domain ?? 'x',
        ),
        subtitle: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HistoryCardLinkText(
              linkType: 'Short Link',
              shortLink: shortUrlModel.shortLink ?? '',
            ),
            HistoryCardLinkText(
              linkType: 'Originnal Link',
              shortLink: shortUrlModel.originalLink ?? '',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text('Created at: '),
                // Text(shortUrlModel.creationDate.toString()),
                Text(
                  DateFormat('yyyy-MM-dd – kk:mm')
                      .format(shortUrlModel.creationDate),
                ),
              ],
            ),
          ],
        ),
      );
}
