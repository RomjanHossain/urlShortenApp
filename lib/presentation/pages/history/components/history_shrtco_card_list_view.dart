import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
import 'package:url_shorten/presentation/pages/history/components/history_card_link_comp.dart';

class HistoryShrtCoCardListTile extends StatelessWidget {
  const HistoryShrtCoCardListTile({
    super.key,
    required this.shrtCoUrlModel,
  });

  final ShrtcoDBModel shrtCoUrlModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'ShrtCo',
      ),
      subtitle: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HistoryCardLinkText(
            linkType: 'Short Link 1',
            shortLink: shrtCoUrlModel.shrtLink1 ?? '',
          ),
          HistoryCardLinkText(
            linkType: 'Short Link 2',
            shortLink: shrtCoUrlModel.shrtLink2 ?? '',
          ),
          HistoryCardLinkText(
            linkType: 'Short Link 3',
            shortLink: shrtCoUrlModel.shrtLink3 ?? '',
          ),
          HistoryCardLinkText(
            linkType: 'Originnal Link',
            shortLink: shrtCoUrlModel.originalLink ?? '',
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
                  .format(shrtCoUrlModel.creationDate)),
            ],
          ),
        ],
      ),
    );
  }
}
