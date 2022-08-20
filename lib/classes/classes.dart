
import 'package:flutter/material.dart';


class Coin {
  String name;
  String icon;

  Coin({required  this.name, required this.icon});
}
final allcoins = <Coin>[
  Coin(
    name: 'Bitcoin',
    icon: 'assets/bitcoin.png'
   ),
  Coin(
      name: 'USDT ERC20',
      icon: 'assets/tether.png'
  ),
  Coin(
      name: 'USDT TRC20',
      icon: 'assets/tether.png'
  ),
  Coin(
      name: 'USDT POLYGON',
      icon: 'assets/tether.png'
  ),
  Coin(
      name: 'Dai (DAI)',
      icon: 'assets/ps-dai.png'
  ),
  Coin(
      name: 'Pax Dollar (USDP)',
      icon: 'assets/ps-pax.png'
  ),
  Coin(
      name: 'BINANCE USD (BUSD)',
      icon: 'assets/bnb.png'
  ),
  Coin(
      name: 'Solana',
      icon: 'assets/ps-solana.png'
  ),
  Coin(
      name: 'Ethereum',
      icon: 'assets/ethereum.png'
  ),
  Coin(
      name: 'Monero',
      icon: 'assets/monero.png'
  ),
  Coin(
      name: 'Litecoin',
      icon: 'assets/litecoin.png'
  ),
  Coin(
      name: 'Dash',
      icon: 'assets/ps-dash2.png'
  ),
  Coin(
      name: 'Tron',
      icon: 'assets/tron.png'
  ),
  Coin(
      name: 'Stellar',
      icon: 'assets/stellar.png'
  ),
  Coin(
      name: 'Ripple',
      icon: 'assets/ripple.png'
  ),
  Coin(
      name: 'ZCash',
      icon: 'assets/zcash.png'
  ),
  Coin(
      name: 'Dogecoin',
      icon: 'assets/dogecoin.png'
  ),
];
class Bank {
  String name;
  String icon;

  Bank({required  this.name, required this.icon});
}
final allbanks = <Bank>[
Bank(
name: 'МИР',
icon: 'assets/bank/mir.png'
),
  Bank(
      name: 'Visa/MasterCard RUB',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'Visa/MasterCard USD',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'Visa/MasterCard EUR',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'Visa/MasterCard KZT',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'ВТБ',
      icon: 'assets/bank/vtb24.png'
  ),
  Bank(
      name: 'Тинькофф',
      icon: 'assets/bank/tcsbank.png'
  ),
  Bank(
      name: 'Альфа-банк',
      icon: 'assets/bank/alphabank.png'
  ),
  Bank(
      name: 'Русский стандарт',
      icon: 'assets/bank/ps-ruskiystandart.png'
  ),
  Bank(
      name: 'Райффайзенбанк',
      icon: 'assets/bank/raiffeisen.png'
  ),
  Bank(
      name: 'Промсвязьбанк',
      icon: 'assets/bank/promsvyazbank.png'
  ),
  Bank(
      name: 'Газпромбанк',
      icon: 'assets/bank/ps-gazprombank.png'
  ),
  Bank(
      name: 'Открытие банк',
      icon: 'assets/bank/openbank.png'
  ),
  Bank(
      name: 'Kaspi Bank',
      icon: 'assets/bank/ps-kaspi_bank.png'
  ),
  Bank(
      name: 'Любой банк RUB',
      icon: 'assets/bank/rur.png'
  ),
  Bank(
      name: 'Любой банк AZN',
      icon: 'assets/bank/azn.png'
  ),
  Bank(
      name: 'Любой банк KZT',
      icon: 'assets/bank/kzt.png'
  ),
  Bank(
      name: 'Любой банк AMD',
      icon: 'assets/bank/amd.png'
  ),
];

class PS {
  String name;
  String icon;

  PS({required  this.name, required this.icon});
}
final allps = <PS>[
PS(
name: 'QIWI RUB',
icon: 'assets/ps/qiwi.png'
),
  PS(
      name: 'Perfect Money USD',
      icon: 'assets/ps/perfect_money.png'
  ),
  PS(
      name: 'Perfect Money EUR',
      icon: 'assets/ps/perfect_money.png'
  ),
  PS(
      name: 'Payeer USD',
      icon: 'assets/ps/payeer.png'
  ),
  PS(
      name: 'Payeer EUR',
      icon: 'assets/ps/payeer.png'
  ),
  PS(
      name: 'Payeer RUB',
      icon: 'assets/ps/payeer.png'
  ),
  PS(
      name: 'Advanced Cash EUR',
      icon: 'assets/ps/advcash.png'
  ),
  PS(
      name: 'Advanced Cash USD',
      icon: 'assets/ps/advcash.png'
  ),
  PS(
      name: 'Advanced Cash RUR',
      icon: 'assets/ps/advcash.png'
  ),
  PS(
      name: 'Мобильная связь РФ',
      icon: 'assets/ps/ps-mobile_russia.png'
  ),
  PS(
      name: 'YooMoney',
      icon: 'assets/ps/yandex.png'
  ),
];
