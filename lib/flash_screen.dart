import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class  FlashlightScreen extends StatefulWidget {
  @override
  FlashlightScreenState createState() => FlashlightScreenState();
}

class FlashlightScreenState extends State<FlashlightScreen> {
  var isON = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //checkLight();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff0577C6),
        title: Text("FlashLight App"),
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/img.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Transform.rotate(
              angle: -3.14 / 2,
              child: Transform.scale(
                scale: 3.0,
                child: Switch(
                  value: isON,
                  onChanged: (value) {
                    setState(
                          () {
                        isON = !isON;
                        isON ? TorchLight.enableTorch() : TorchLight.disableTorch();
                      },
                    );
                  },
                ),
              ),
            ),
          )
      ),
    );
  }
}
