import 'package:flutter/material.dart';

class YesNoDialog extends StatelessWidget {
  final String message;
  final String buttonTitleLeft;
  final String buttonTitleRight;
  final bool leftButtonReturn;
  final bool rightButtonReturn;
  final double widthMultiplyer;
  final TextAlign messageAlignment;
  final Widget? header;

  const YesNoDialog({
    required this.message,
    required this.buttonTitleLeft,
    required this.buttonTitleRight,
    this.leftButtonReturn = true,
    this.rightButtonReturn = false,
    this.widthMultiplyer = 0.5,
    this.messageAlignment = TextAlign.center,
    this.header,
  });

  dialogContent(BuildContext context, double width, double height) {
    return Container(
      height: 165,
      width: width * widthMultiplyer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          header ?? Container(),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: width,
                maxWidth: width,
                minHeight: 60,
                maxHeight: 60,
              ),
              child: Text(
                message,
                textAlign: messageAlignment,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xff717D8D),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    child: Text(
                      buttonTitleLeft,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context, leftButtonReturn);
                    },
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 30,
                  padding: EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    child: Text(
                      buttonTitleRight,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context, rightButtonReturn);
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthOfScreen = MediaQuery.of(context).size.width;
    var heightOfScreen = MediaQuery.of(context).size.height;
    return Dialog(
      elevation: 0.0,
      insetPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: dialogContent(context, widthOfScreen, heightOfScreen),
    );
  }
}
