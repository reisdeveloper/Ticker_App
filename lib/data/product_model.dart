import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ticker/data/price_data.dart';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL =
          'https://rest.coinapi.io/v1/exchangerate/btc/USD?apikey=95DDE73E-AFB3-4804-A6A9-C94EB0D19F8B';
      http.Response response = await http.get(Uri.parse(requestURL));

      if (response.statusCode == 200) {
        var decodedData = json.decode(response.body);
        double lastPrice = decodedData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}
