import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CNY',
  'CAD',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'JPY',
  'INR',
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
const bitcoinAverageURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '225C360A-8582-47DB-8B24-22397E8A99C4';

class CoinData {
  Future getCoinData(String? selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL =
          '$bitcoinAverageURL/$crypto/$selectedCurrency?apikey=$apiKey';
      print(requestURL);
      var response = await http.get(Uri.parse(requestURL));
      //print(response.body);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double rate = decodedData['rate'];
        print(rate);
        cryptoPrices[crypto] = rate.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    print('The value of cryptoPrice is :$cryptoPrices');
    return cryptoPrices;
  }
}

/*
class getApiData {

  void getData() async {
    try {
      var data = await CoinData().getCoinData(selectedCurrency);
//13. We can't await in a setState(). So you have to separate it out into two steps.
    } catch (e) {
      print(e);
    }
  }
}
*/
