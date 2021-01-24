import 'dart:convert';
import 'dart:io';
import 'package:market_logger/key.dart';
import 'package:bybit/bybit.dart';

ByBit bybit;
var out = File('log.txt').openWrite();

/// Read messages from the bybit stream.
Future<void> readWebSocket(Stream<dynamic> stream) async {
  await for (var value in stream) {
    out.write(jsonEncode(value).toString() + '\n');
  }
}

Future<void> main(List<String> arguments) async {
  bybit = ByBit(logLevel: 'INFO', key: key, password: pwd);
  bybit.connect();
  bybit.subscribeToInstrumentInfo(symbol: 'ETHUSD');
  bybit.subscribeToInstrumentInfo(symbol: 'BTCUSD');
  await readWebSocket(bybit.stream);
  //out.close();
}
