import 'package:bank_ui/utils/bankcard.dart';
import 'package:bank_ui/utils/transactioncard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 232, 252),
      appBar: NewGradientAppBar(
        elevation: 1,
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 117, 178, 227),
              Color.fromARGB(255, 175, 226, 246)
            ]),
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome! ',
              style: GoogleFonts.raleway(
                fontSize: 18,
              ),
            ),
            Text(
              'SAJAN',
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.qr_code_scanner_outlined),
          SizedBox(
            width: 7,
          ),
          Text('')
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 102, 186, 254),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Card(
                    elevation: 4,
                    color: const Color.fromARGB(255, 175, 226, 246),
                    child: SizedBox(
                      height: 150,
                      width: 370,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              child: const Center(
                                child: CircleAvatar(
                                  radius: 55,
                                  backgroundImage: NetworkImage(
                                      'https://i.pinimg.com/564x/81/24/0f/81240fc7ff9a65623e7a78bfe2e9c900.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sajan Baisil',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'INR. 2,00,999.35',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                                const Text(
                                  '281656484161548651',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Image.asset(
                  'assets/drop-down-menu.png',
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'WOULD YOU LIKE TO?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BankCard(
                  imageicon: 'assets/mobile-banking.png',
                  text: 'My Account',
                ),
                BankCard(
                  imageicon: 'assets/letter-e.png',
                  text: 'Load eSewa',
                ),
                BankCard(
                  imageicon: 'assets/payment-gateway.png',
                  text: 'Payment',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BankCard(
                  imageicon: 'assets/transfer-money.png',
                  text: 'Fund Transfer',
                ),
                BankCard(
                  imageicon: 'assets/credits.png',
                  text: 'Schedule',
                ),
                BankCard(
                  imageicon: 'assets/scanner.png',
                  text: 'Scan To Pay',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/drop-down-menu.png',
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'LAST TRANSACTIONS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: const [
                  TransactionCard(
                    date: '10-06-22',
                    amount: 'INR.10,000.00',
                  ),
                  TransactionCard(
                    date: '6-06-22',
                    amount: 'INR.5,000.00',
                  ),
                  TransactionCard(
                    date: '2-06-22',
                    amount: 'INR.7,000.00',
                  ),
                  TransactionCard(
                    date: '28-05-22',
                    amount: 'INR.20,000.00',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
