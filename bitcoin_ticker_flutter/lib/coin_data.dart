import 'dart:convert';

import 'package:bitcoin_ticker_flutter/constants.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Map<String, String> cryptoPrices = {};

  Future getCoinData(tgt) async {
    for (String crypto in cryptoList) {
      http.Response response =
          await http.get(Uri.parse('$kURL$crypto/$tgt/?apikey=$kApiKey'));

      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        var lastPrice = decodedData['rate'];

        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Request error.';
      }
    }
    return cryptoPrices;
  }
}
