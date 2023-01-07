import 'dart:io' show Platform;

import 'package:bit_coin_flutter/coin_data.dart';
import 'package:bit_coin_flutter/util/utilities.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  Function? getData;

  @override
  PriceScreen({this.getData});
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  /// Function---->Android
  String selectedCurrency = 'AUD';
  String startingText = 'Selected Item';

  DropdownButtonHideUnderline getAndroidDropDown() {
    List<DropdownMenuItem<dynamic>> getDropDownItem() {
      List<DropdownMenuItem<dynamic>> dropDownItems = [];
      for (int i = 0; i < currenciesList.length; i++) {
        var currencyName = currenciesList[i];
        var dropDownMenuItem =
            (DropdownMenuItem(value: currencyName, child: Text(currencyName)));
        dropDownItems.add(dropDownMenuItem);
      }
      return dropDownItems;
    }

    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            const Icon(
              Icons.list,
              size: 16,
              color: Colors.yellow,
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                startingText,
                style: kStartingTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),

        /// Method1 ---->Iterating through each item using map data structure.

/*items: currenciesList
                    .map(
                      (item) => DropdownMenuItem<String>(
                        /// Here value--->item, 1st item in the list will be the starting name of value.
                        /// 1st value will be 'AUD'
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                    .toList(),*/

        /// Method2 ---->Iterating through each item using list data structure.
        items: getDropDownItem(),

        ///This is a call back
        onChanged: (value) {
          setState(() {
            selectedCurrency = value.toString();
            startingText = value.toString();
            getData();
          });
        },
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
        ),

        iconSize: 14,
        iconEnabledColor: Colors.yellow,
        iconDisabledColor: Colors.grey,
        buttonHeight: 50,
        buttonWidth: 160,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.black26,
          ),
          color: Colors.redAccent,
        ),
        buttonElevation: 2,
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: 200,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.redAccent,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(-20, 0),
      ),
    );
  }

  /// Function----->IOS
  CupertinoPicker getIosDropDown() {
    List<Text> pickerItems = [];
    List<Text> getPickerItems() {
      for (int i = 0; i < currenciesList.length; i++) {
        var currency = currenciesList[i];
        var currencyNameCupertino = Text(currency);
        pickerItems.add(currencyNameCupertino);
      }
      return pickerItems;
    }

    return CupertinoPicker(
        itemExtent: 32,
        onSelectedItemChanged: (value) {
          setState(() {
            selectedCurrency = value.toString();
            getData();
          });
        },
        children: getPickerItems());
  }

  ///Function that checks wether the platform is IOS or Android
  Widget getDropdown() {
    if (Platform.isAndroid) {
      return getAndroidDropDown();
    } else {
      return getIosDropDown();
    }
  }

  ///12. Create a variable to hold the value and use in our Text Widget. Give the variable a starting value of '?' before the data comes back from the async methods.
  //String bitcoinValue = '?';
  Map<String, String> coinValues = {};
  bool isWaiting = false;
  void getData() async {
    isWaiting = true;
    try {
      var data = await CoinData().getCoinData(selectedCurrency);
      //print(data);
      isWaiting = false;

      ///. We can't await in a setState(). So you have to separate it out into two steps.
      setState(() {
        //bitcoinValueInUSD = data.rate.totring();
        //bitcoinValue = data.toString();
        coinValues = data;
        print('The value of Bitcoin is $coinValues');
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards = [];
    for (String crypto in cryptoList) {
      cryptoCards.add(
        CryptoCard(
          cryptoCurrency: crypto,
          selectedCurrency: selectedCurrency,
          value: isWaiting ? '?' : coinValues[crypto],
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('🤑 Coin Ticker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          makeCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? getIosDropDown() : getAndroidDropDown(),
          ),
        ],
      ),
    );
  }
/*
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('🤑 Coin Ticker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 28.0),
                child: Text(
                  //5: Update the currency name depending on the selectedCurrency.
                  '1 BTC = $bitcoinValue $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: kBtcTextStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 28.0),
                child: Text(
                  //5: Update the currency name depending on the selectedCurrency.
                  '1 ETH = $bitcoinValue $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: kBtcTextStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 28.0),
                child: Text(
                  //5: Update the currency name depending on the selectedCurrency.
                  '1 LTC = $bitcoinValue $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: kBtcTextStyle,
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: getDropdown(),
          ),
        ],
      ),
    );
  }
*/
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    required this.value,
    required this.selectedCurrency,
    required this.cryptoCurrency,
  });

  final String? value;
  final String selectedCurrency;
  final String cryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoCurrency = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
