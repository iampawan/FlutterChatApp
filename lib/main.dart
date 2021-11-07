import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'my_app.dart';

const apiKey = "b67pax5b2wdq";
const userToken =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidHV0b3JpYWwtZmx1dHRlciJ9.S-MJpoSwDiqyXpUURgO5wVqJ4vKlIVFLSEyrFYCOE1c";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //StreamChatClient
  final client = StreamChatClient(apiKey, logLevel: Level.INFO);

  // Current user
  await client.connectUser(User(id: "tutorial-flutter"), userToken);

  // Get channel
  final channel = client.channel("messaging", id: "flutterdevs");

  await channel.watch();

  runApp(MyApp(client: client, channel: channel));
}
