import 'package:challengetdc/constants/constants.dart';
import 'package:challengetdc/features/login/presentation/widgets/card_widget.dart';
import 'package:challengetdc/features/login/presentation/widgets/custom_button_gradient_widget.dart';
import 'package:challengetdc/features/login/presentation/widgets/custom_button_widget.dart';
import 'package:challengetdc/features/login/presentation/widgets/info_widget.dart';
import 'package:challengetdc/features/login/presentation/widgets/top_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TopContainerWidget(

          image: Image.asset('assets/images/logo.png'),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

                Column(
                  children: <Widget>[
                    CardWidget(

                      child: Column(
                        children: <Widget>[

                          ListTile(
                            isThreeLine: true,
                            leading: CircleAvatar(
                              radius: 24,
                              backgroundColor: kGreyColor,
                              foregroundColor: kCardColor,
                              child: Text('CF'),
                            ),
                            trailing: CustomButtonWidget(
                              label: 'TROCAR',
                              buttonColor: kCardColor,
                              borderColor: kLightGreyColor,
                              labelColor: kDarkGreyColor,
                              onPressed: () {},
                            ),
                            title: Text('Operador'),
                            subtitle: Text('1234-5'),
                          ),

                          CustomButtonGradientWidget(
                            label: 'ENTRAR',
                            startColor: kStartGradientColor,
                            endColor: kEndGradientColor,
                            labelColor: Colors.white,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16,),

                    CardWidget(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,


                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset('assets/images/icon-shield.png'),

                                SizedBox(width: 8,),

                                Text('i-safe', style: kTextStyleBoldSizeMax,),
                              ],

                            ),


                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: <Widget>[
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white,
                                  foregroundColor: kOrangeColor,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      '°°°°',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 8,),

                                Text('Gerar'),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                InfoWidget()

            ],
          ),
        ),
      ),
    );
  }
}


