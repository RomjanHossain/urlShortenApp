import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/presentation/pages/history/components/history_card_link_comp.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.shortUrlModel});

  final ShortUrlContainerDBModel shortUrlModel;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(shortUrlModel.id.toString()),
      child: Card(
        child: ListTile(
          title: Text(
            shortUrlModel.domain ?? 'x',
          ),
          subtitle: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                children: [
                  const Text('Created at: '),
                  // Text(shortUrlModel.creationDate.toString()),
                  Text(DateFormat('yyyy-MM-dd – kk:mm')
                      .format(shortUrlModel.creationDate)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
