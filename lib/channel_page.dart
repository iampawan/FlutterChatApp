import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelPage extends StatelessWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChannelHeader(),
      body: Column(children: const [
        Expanded(
          child: MessageListView(),
        ),
        MessageInput(),
      ]),
    );
  }
}
