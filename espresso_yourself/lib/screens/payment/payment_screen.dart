import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/reusable_components/background_img_decoration.dart';
import 'package:espresso_yourself/screens/payment/order_sheet_view.dart';
import 'package:espresso_yourself/screens/payment/payment_alert_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../mock_data.dart';
import '../../model/credit_card.dart';
import '../../reusable_components/buttons/custom_back_btn_view.dart';
import '../../reusable_components/custom_text_field.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController holderName = TextEditingController();
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController expiryDate = TextEditingController();
  final TextEditingController cvv = TextEditingController();

  CreditCard creditCard = CreditCard();

  bool _isValidated() {
    setState(() {
      creditCard.holderName =
          Validations.fullName(holderName.text) == null ? holderName.text : '';
      creditCard.cardNum = Validations.creditCardNum(cardNumber.text) == null
          ? cardNumber.text
          : '';
      creditCard.expiry = Validations.creditCardExpiry(expiryDate.text) == null
          ? expiryDate.text
          : '';
      creditCard.cvv =
          Validations.creditCardCVV(cvv.text) == null ? cvv.text : '';
    });

    return (creditCard.holderName.isNotEmpty &&
        creditCard.cardNum.isNotEmpty &&
        creditCard.expiry.isNotEmpty &&
        creditCard.cvv.isNotEmpty);
  }

  void _completeOrder(BuildContext context) {
    if (_isValidated()) {
      _showOrderCompletedSheet(context);
      MockData().user.cart.items = [];
    } else {
      _showInvalidCardAlert(context);
    }
  }

  void _showInvalidCardAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const PaymentAlertView();
      },
    );
  }

  void _showOrderCompletedSheet(BuildContext context) => showModalBottomSheet(
        elevation: 10,
        backgroundColor: C.primary,
        context: context,
        builder: (context) => Container(
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: const OrderSheetView(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const BackgroundImgDecoration(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _HeaderView(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text('Card Details:').styled(),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: CustomTextField(
                                txtController: holderName,
                                hint: 'Card Holder Name',
                                icon: CupertinoIcons.person,
                                isObscure: false,
                                validation: Validations.fullName,
                              ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: CustomTextField(
                                txtController: cardNumber,
                                hint: 'Card Number',
                                icon: CupertinoIcons.creditcard,
                                isObscure: false,
                                validation: Validations.creditCardNum,
                              ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: CustomTextField(
                                  txtController: expiryDate,
                                  hint: 'Expiry',
                                  icon: CupertinoIcons.calendar,
                                  isObscure: false,
                                  validation: Validations.creditCardExpiry,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                flex: 3,
                                child: CustomTextField(
                                  txtController: cvv,
                                  hint: 'CVV',
                                  icon: CupertinoIcons.shield,
                                  isObscure: true,
                                  validation: Validations.creditCardCVV,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: C.accent,
                              padding: const EdgeInsets.all(16),
                            ),
                            onPressed: () => _completeOrder(context),
                            child: const Text('Complete Order')
                                .styled(size: 24, weight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBackBtnView(context: context),
        const Text('Payment').styled(size: 20, weight: FontWeight.w700),
        const SizedBox(width: 60),
      ],
    );
  }
}
