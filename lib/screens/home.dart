import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

import '../utils/helpers/vibrate.dart';
import '../utils/helpers/get_id.dart';
import '../utils/services/send_alert_service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _loadDeviceId();
  }

  _loadDeviceId() async {
    await getId();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () async {
            print('ok');
            int devicesAlerted = await sendAlert();
            vibrate();
            CoolAlert.show(
              context: context,
              type: CoolAlertType.info,
              text: '$devicesAlerted device(s) have been alerted',
            );
          },
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset('assets/images/exclamation.png'),
            ),
          ),
        ),
      ),
    );
  }
}
